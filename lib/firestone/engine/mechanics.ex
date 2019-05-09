defmodule Firestone.Engine.Mechanics do
  alias Firestone.Engine.{State, Entities, Triggers}

  @doc """
  Seems to work
      iex> Firestone.create_game()
      ...> |> apply_fatigue(:p1)
      ...> |> apply_fatigue(:p1)
      ...> |> List.first()
      ...> |> State.player(:p1, :fatigue)
      2

      iex> Firestone.create_game([%{hero: "Rexxar"}])
      ...> |> apply_fatigue(:p1)
      ...> |> apply_fatigue(:p1)
      ...> |> apply_fatigue(:p1)
      ...> |> State.player(:p1, :hero)
      ...> |> Entities.health()
      30 - (1 + 2 + 3)
  """
  def apply_fatigue(states, player_id) do
    increased_fatigue = states |> State.update_player(player_id, :fatigue, &(&1 + 1))
    fatigue = increased_fatigue |> State.player(player_id, :fatigue)

    increased_fatigue
    |> State.update_player(player_id, :hero, &Entities.add_damage(&1, fatigue))
    |> Triggers.damage_taken(player_id, :hero)
  end
end
