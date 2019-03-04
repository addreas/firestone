defmodule Firestone.Engine.Predicates do
  def dead?(%{damage_taken: damage_taken, game_id: game_id}) do
    health = Firestone.Entities.health(%{damage_taken: damage_taken, game_id: game_id})

    damage_taken > health
  end

  def end_game?(%{players: %{p1: p1, p2: p2}}) do
    dead?(p1.hero) or dead?(p2.hero)
  end
end
