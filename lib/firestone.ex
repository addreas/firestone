defmodule Firestone do
  def create_game do
    create_game []
  end

  def create_game data do
    [Firestone.Engine.State.create_game data]
  end

  def play_spell states do
    states
  end

  def play_minion states do
    states
  end

  def attack states do
    states
  end

  def hero_power states do
    states
  end

  def choose states do
    states
  end

  def end_turn states do
    #End of turn phase
    states
      |> Firestone.Engine.Events.end_turn

    #Check win/loss/draw
      |> Firestone.Engine.Predicates.is_end_game?

    #Start of turn phase
      |> Firestone.Engine.Events.start_turn

    #Check win/loss/draw
      |> Firestone.Engine.Predicates.is_end_game?

    #Draw card phase
      |> Firestone.Engine.Actions.draw_card

    #Check win/loss/draw
      |> Firestone.Engine.Predicates.is_end_game?
  end
end
