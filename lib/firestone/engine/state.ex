defmodule Firestone.Engine.State do
  def default_player player_id do
    %{
      hero: Firestone.Engine.Entities.create("Rexxar", :hero, player_id),
      board: [],
      hand: [],
      deck: [],
      fatigue: 0,
      graveyard: []
    }
  end

  def add_player_entity state, player_id, type, data do
    entity = Firestone.Engine.Entities.create data, type, state.counter

    state
      |> put_in([:players, player_id, type], entity)
      |> update_in([:counter], &(&1 + 1))
  end

  def add_player_entity_list state, player_id, type, data_list do
    entities = for {data, c} <- Enum.with_index(data_list, state.counter) do
      Firestone.Engine.Entities.create data, type, c
    end

    state
      |> update_in([:players, player_id, type], &( entities ++ &1 ))
      |> update_in([:counter], &(&1 + length(entities)))
  end

  def add_player_data state, player_id, data do
    initial_player = put_in state.players[player_id], default_player(player_id)

    for {key, val} <- data, reduce: initial_player do
      state -> cond do
          key in [:hero] -> add_player_entity state, player_id, key, val
          key in [:board, :hand, :deck, :graveyard] -> add_player_entity_list state, player_id, key, val
          true -> put_in state.players[player_id][key], val
        end
    end
  end

  @doc """

  Minion shorthands work:
      iex> create_game [%{minions: ["Imp", %{game_id: "EX1_598"}, %{name: "Imp"}]}]
      create_game [%{minions: ["Imp", "Imp", "Imp"]}]

  Hand shorthands work:
      iex> create_game [%{hand: ["Imp", %{game_id: "EX1_598"}, %{name: "Imp"}]}]
      create_game [%{hand: ["Imp", "Imp", "Imp"]}]

  Deck shorthands work:
      iex> create_game [%{deck: ["Imp", %{game_id: "EX1_598"}, %{name: "Imp"}]}]
      create_game [%{deck: ["Imp", "Imp", "Imp"]}]

  Creates the state:
      iex> create_game []
      %{
        current_player: :p1,
        players: %{
          p1: %{},
          p2: %{},
        }
      }

  """
  def create_game, do: create_game []

  def create_game [] do create_game [%{}, %{}] end

  def create_game [p1] do create_game [p1, %{}] end

  def create_game [p1, p2] do
    %{
      current_player: :p1,
      counter: 0,
      players: %{},
      turn: %{
        cards_played: [],
        minions_summoned: []
      },
    }
    |> add_player_data(:p1, p1)
    |> add_player_data(:p2, p2)
  end
end
