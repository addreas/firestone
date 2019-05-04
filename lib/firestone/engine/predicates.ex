defmodule Firestone.Engine.Predicates do
  def dead?(%{damage_taken: damage_taken, game_id: game_id}) do
    health = Firestone.Engine.Entities.health(%{damage_taken: damage_taken, game_id: game_id})

    damage_taken > health
  end

  def dead?(_) do
    false
  end

  @doc """
  Player one is dead
      iex> [state] = Firestone.create_game([%{hero: %{name: "Rexxar", damage_taken: 30}}])
      ...> end_game?(state)
      true
  """
  def end_game?([state | _]), do: end_game?(state)

  def end_game?(%{players: %{p1: p1, p2: p2}}) do
    dead?(p1.hero) or dead?(p2.hero)
  end
end
