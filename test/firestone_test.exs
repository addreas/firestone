defmodule FirestoneTest do
  use ExUnit.Case
  doctest Firestone

  test "greets the world" do
    assert Firestone.hello() == :world
  end

  test "creates the game" do
    assert Firestone.Agent.update(:create_game) == [:game]
    assert Firestone.Agent.update(:end_turn) == [:end_turn, :game]
  end
end
