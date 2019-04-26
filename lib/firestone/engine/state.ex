defmodule Firestone.Engine.State do
  @doc """

  Top level keys work:
      iex> create_game([], current_player: :p2).current_player
      :p2

  Turn specific values work:
      iex> create_game([], turn: %{cards_played: ["Imp"]}).turn.cards_played
      ...> |> Enum.at(0)
      ...> |> Map.get(:game_id)
      "EX1_598"

  Board shorthands work:
      iex> create_game [%{board: ["Imp", %{game_id: "EX1_598"}, %{name: "Imp"}]}]
      create_game [%{board: ["Imp", "Imp", "Imp"]}]

  Hand shorthands work:
      iex> create_game [%{hand: ["Imp", %{game_id: "EX1_598"}, %{name: "Imp"}]}]
      create_game [%{hand: ["Imp", "Imp", "Imp"]}]

  Deck shorthands work:
      iex> create_game [%{deck: ["Imp", %{game_id: "EX1_598"}, %{name: "Imp"}]}]
      create_game [%{deck: ["Imp", "Imp", "Imp"]}]

  Creates the state:
      iex> create_game [%{ fatigue: 1 }, %{ fatigue: 2 }]
      %{
        counter: 0,
        current_player: :p1,
        turn: %{cards_played: [], minions_summoned: []},
        players: %{
          p1: %{
            board: [],
            deck: [],
            fatigue: 1,
            graveyard: [],
            hand: [],
            mana: 0,
            mana_crystals: 0,
            hero: %{game_id: "HERO_05", id: "herop1", name: "Rexxar"}
          },
          p2: %{
            board: [],
            deck: [],
            fatigue: 2,
            graveyard: [],
            hand: [],
            mana: 0,
            mana_crystals: 0,
            hero: %{game_id: "HERO_05", id: "herop2", name: "Rexxar"}
          }
        },
      }


  """
  def create_game(players \\ [], data \\ [])

  def create_game([], data) do
    create_game([%{}, %{}], data)
  end

  def create_game([p1], data) do
    create_game([p1, %{}], data)
  end

  def create_game([p1, p2], data) do
    %{
      current_player: :p1,
      counter: 0,
      turn: %{
        cards_played: [],
        minions_summoned: []
      },
      players: %{p1: default_player(:p1), p2: default_player(:p2)}
    }
    |> add_player_data(:p1, p1)
    |> add_player_data(:p2, p2)
    |> add_data(data)
  end

  def default_player(player_id) do
    %{
      hero: Firestone.Engine.Entities.create("Rexxar", :hero, player_id),
      board: [],
      graveyard: [],
      hand: [],
      deck: [],
      fatigue: 0,
      mana: 0,
      mana_crystals: 0
    }
  end

  @doc """
  Adding hero
      iex> create_game()
      ...> |> add_player_data(:p1, %{hero: "Rexxar"})
      ...> |> get_in([:players, :p1, :hero, :name])
      "Rexxar"

  Adding board item
      iex> create_game()
      ...> |> add_player_data(:p1, %{board: ["Imp"]})
      ...> |> get_in([:players, :p1, :board])
      ...> |> Enum.map(& &1.name)
      ["Imp"]

  Adding other key
      iex> create_game()
      ...> |> add_player_data(:p1, %{mana: 5})
      ...> |> get_in([:players, :p1, :mana])
      5

  """
  def add_player_data(state, player_id, data) do
    for {key, val} <- data, reduce: state do
      state ->
        cond do
          key in [:hero] ->
            add_player_entity(state, player_id, key, val)

          key in [:board, :hand, :deck, :graveyard] ->
            add_player_entity_list(state, player_id, key, val)

          true ->
            put_in(state.players[player_id][key], val)
        end
    end
  end

  def add_player_entity(state, player_id, type, data) do
    entity = Firestone.Engine.Entities.create(data, type, state.counter)

    state
    |> put_in([:players, player_id, type], entity)
    |> update_in([:counter], &(&1 + 1))
  end

  def add_player_entity_list(state, player_id, type, list) do
    entities =
      for {data, c} <- Enum.with_index(list, state.counter) do
        Firestone.Engine.Entities.create(data, type, c)
      end

    state
    |> update_in([:players, player_id, type], &(entities ++ &1))
    |> update_in([:counter], &(&1 + length(entities)))
  end

  def add_data(state, data) do
    for {key, val} <- data, reduce: state do
      state ->
        cond do
          key in [:turn] -> add_turn_data(state, val)
          true -> put_in(state[key], val)
        end
    end
  end

  @doc """
  Cards played
      iex> create_game()
      ...> |> add_turn_data(cards_played: ["Imp"])
      ...> |> get_in([:turn, :cards_played])
      ...> |> Enum.map(& &1.name)
      ["Imp"]

  Arbitrary value
      iex> create_game()
      ...> |> add_turn_data(arbitrary_key: :arbitrary_value)
      ...> |> get_in([:turn, :arbitrary_key])
      :arbitrary_value
  """
  def add_turn_data(state, data) do
    for {key, val} <- data, reduce: state do
      state ->
        cond do
          key in [:cards_played, :minions_summoned] -> add_turn_entity_list(state, key, val)
          true -> put_in(state.turn[key], val)
        end
    end
  end

  def add_turn_entity_list(state, key, list) do
    entities =
      for {data, c} <- Enum.with_index(list, state.counter) do
        Firestone.Engine.Entities.create(data, key, c)
      end

    state
    |> update_in([:turn, key], &(&1 ++ entities))
    |> update_in([:counter], &(&1 + length(entities)))
  end

  @doc """
  Seems to work
      iex> create_game()
      ...> |> player(:p1, :graveyard)
      []
  """
  def player(state, player_id, key),
    do: get_in(state, [:players, player_id, key])

  @doc """
  Seems to work
      iex> create_game([%{mana: 2}])
      ...> |> update_player(:p1, :mana, & &1 + 1)
      ...> |> player(:p1, :mana)
      3

  Seems to work
      iex> create_game([%{mana: 2}])
      ...> |> update_player(:p1, :mana, 5)
      ...> |> player(:p1, :mana)
      5
  """
  def update_player(state, player_id, key, function) when is_function(function),
    do: update_in(state, [:players, player_id, key], function)

  def update_player(state, player_id, key, value),
    do: put_in(state, [:players, player_id, key], value)

  @doc """
  Seems to work
      iex> create_game()
      ...> |> cards_played()
      []
  """
  def cards_played(state),
    do: get_in(state, [:turn, :cards_played])

  def reset_cards_played(state),
    do: put_in(state, [:turn, :cards_played], [])

  @doc """
  Seems to work
      iex> create_game()
      ...> |> current_player()
      :p1

      iex> create_game([], current_player: :p2)
      ...> |> current_player()
      :p2
  """
  def current_player(state),
    do: state.current_player

  @doc """
  Seems to work
      iex> create_game()
      ...> |> swap_current_player()
      ...> |> current_player()
      :p2

      iex> create_game([], current_player: :p2)
      ...> |> swap_current_player()
      ...> |> current_player()
      :p1
  """
  def swap_current_player(state),
    do:
      put_in(
        state.current_player,
        case current_player(state) do
          :p1 -> :p2
          :p2 -> :p1
        end
      )

  @doc """
  Seems to work
      iex> create_game()
      ...> |> minions_summoned()
      []
  """
  def minions_summoned(state),
    do: get_in(state, [:turn, :minions_summoned])

  def reset_minions_summoned(state),
    do: put_in(state, [:turn, :minions_summoned], [])
end
