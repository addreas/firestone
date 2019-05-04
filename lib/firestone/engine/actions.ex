defmodule Firestone.Engine.Actions do
  @doc """
      iex> Firestone.create_game()
      ...> |> draw_card()
      ...> |> List.first()
      ...> |> State.player(:p1, :fatigue)
      1

      iex> Firestone.create_game([], %{current_player: :p2})
      ...> |> draw_card()
      ...> |> draw_card()
      ...> |> List.first()
      ...> |> State.player(:p2, :fatigue)
      2

      iex> Firestone.create_game([%{deck: ["Imp", "Imp"]}])
      ...> |> draw_card()
      ...> |> draw_card()
      ...> |> List.first()
      ...> |> State.player(:p1, :hand)
      ...> |> Enum.count()
      2

      iex> Firestone.create_game([%{deck: ["Imp", "Imp"]}])
      ...> |> draw_card()
      ...> |> draw_card()
      ...> |> draw_card()
      ...> |> List.first()
      ...> |> State.player(:p1, :fatigue)
      1

      iex> Firestone.create_game([%{hero: "Rexxar"}])
      ...> |> draw_card()
      ...> |> draw_card()
      ...> |> draw_card()
      ...> |> State.player(:p1, :hero)
      ...> |> Entities.health()
      30 - (1 + 2 + 3)

  """
  def draw_card(states) do
    states
  end
end
