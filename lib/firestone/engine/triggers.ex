defmodule Firestone.Engine.Triggers do
  def start_turn(states) do
    states
  end

  def end_turn(states) do
    states
  end

  def damage_taken(states, _player_id, :hero) do
    states
  end

  def damage_taken(states, _player_id, :board, _entity_id) do
    states
  end
end
