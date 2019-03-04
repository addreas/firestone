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
      iex> [Firestone.create_game([%{mana: 5, max_mana: 10}])]
      ...> |> end_turn()
      ...> |> Firestone.State.mana(:p1)
      6

      iex> [Firestone.create_game([%{mana: 10, max_mana: 10}])]
      ...> |> end_turn()
      ...> |> Firestone.State.mana(:p1)
      10

  Structs are emptied:
      iex> [Firestone.create_game([], turn: %{cards_played: ["Imp"]})]
      ...> |> end_turn()
      ...> |> Firestone.State.cards_played()
      []

  """
  def end_turn(states) do
    # End of turn phase
    states
    |> Firestone.Engine.Triggers.end_turn()

    # Check win/loss/draw
    |> Firestone.Engine.Predicates.end_game?()

    # Start of turn phase
    |> Firestone.Engine.Triggers.start_turn()

    # Check win/loss/draw
    |> Firestone.Engine.Predicates.end_game?()

    # Draw card phase
    |> Firestone.Engine.Actions.draw_card()

    # Check win/loss/draw
    |> Firestone.Engine.Predicates.end_game?()
  end
end
