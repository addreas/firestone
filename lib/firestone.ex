defmodule Firestone do
  def create_game(players \\ [], data \\ []) do
    [Firestone.Engine.State.create_game(players, data)]
  end

  def play_spell([state | _]) do
    [state]
  end

  def play_minion([state | _]) do
    [state]
  end

  def attack([state | _]) do
    [state]
  end

  def hero_power([state | _]) do
    [state]
  end

  def choose([state | _]) do
    [state]
  end

  @doc """
  Mana is properly increased:
      iex> [state | _] = Firestone.create_game([%{mana: 1, mana_crystals: 6}])
      ...> |> end_turn()
      ...> Firestone.Engine.State.player(state, :p1, :mana)
      6

      iex> [state | _] = Firestone.create_game([%{mana: 10, mana_crystals: 10}])
      ...> |> end_turn()
      ...> Firestone.Engine.State.player(state, :p1, :mana)
      10

  Cards played are emptied:
      iex> [state | _] = Firestone.create_game([], turn: %{cards_played: ["Imp"]})
      ...> |> end_turn()
      ...> Firestone.Engine.State.cards_played(state)
      []

  """
  def end_turn(states) do
    [turn_ended | states] = Firestone.Engine.Triggers.end_turn(states)

    if Firestone.Engine.Predicates.end_game?(turn_ended) do
      raise "game ended"
    end

    mana_crystals =
      Firestone.Engine.State.player(turn_ended, turn_ended.current_player, :mana_crystals)

    reset_turn =
      turn_ended
      |> Firestone.Engine.State.update_player(
        turn_ended.current_player,
        :mana,
        mana_crystals
      )
      |> Firestone.Engine.State.update_player(
        turn_ended.current_player,
        :mana_crystals,
        fn mana ->
          min(10, mana + 1)
        end
      )
      |> Firestone.Engine.State.reset_cards_played()
      |> Firestone.Engine.State.reset_minions_summoned()

    # Start of turn phase
    [turn_started | states] =
      Firestone.Engine.Triggers.start_turn([reset_turn, turn_ended | states])

    if Firestone.Engine.Predicates.end_game?(turn_started) do
      raise "game ended"
    end

    # Draw card phase
    [card_drawn | states] = Firestone.Engine.Actions.draw_card([turn_started | states])

    if Firestone.Engine.Predicates.end_game?(card_drawn) do
      raise "game ended"
    end

    [card_drawn | states]
  end
end
