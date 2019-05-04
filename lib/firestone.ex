defmodule Firestone do
  alias Firestone.Engine.{Actions, Predicates, State, Triggers}

  def create_game(players \\ [], data \\ []) do
    [State.create_game(players, data)]
  end

  def attack([state | _]) do
    [state]
  end

  def play_spell([state | _]) do
    [state]
  end

  def play_minion([state | _]) do
    [state]
  end

  def hero_power([state | _]) do
    [state]
  end

  @doc """
  Current Player switches:
      iex> Firestone.create_game()
      ...> |> end_turn()
      ...> |> List.first()
      ...> |> State.current_player()
      :p2

  Mana is properly increased:
      iex> Firestone.create_game([%{mana: 1, mana_crystals: 6}])
      ...> |> end_turn()
      ...> |> List.first()
      ...> |> State.player(:p1, :mana)
      6

      iex> Firestone.create_game([%{mana: 10, mana_crystals: 10}])
      ...> |> end_turn()
      ...> |> List.first()
      ...> |> State.player(:p1, :mana)
      10

  Cards played are emptied:
      iex> Firestone.create_game([], turn: %{cards_played: ["Imp"]})
      ...> |> end_turn()
      ...> |> List.first()
      ...> |> State.cards_played()
      []
  """
  def end_turn(states) do
    turn_ended = Triggers.end_turn(states)

    if Predicates.end_game?(turn_ended) do
      raise "game ended"
    end

    current_player = State.current_player(turn_ended)
    mana_crystals = State.player(turn_ended, current_player, :mana_crystals)

    next_turn =
      turn_ended
      |> State.update_player(
        current_player,
        :mana,
        mana_crystals
      )
      |> State.update_player(
        current_player,
        :mana_crystals,
        fn mana ->
          min(10, mana + 1)
        end
      )
      |> State.reset_cards_played()
      |> State.reset_minions_summoned()
      |> State.swap_current_player()
      |> Triggers.start_turn()

    if Predicates.end_game?(next_turn) do
      raise "game ended"
    end

    card_drawn = Actions.draw_card(next_turn)

    if Predicates.end_game?(card_drawn) do
      raise "game ended"
    end

    card_drawn
  end
end
