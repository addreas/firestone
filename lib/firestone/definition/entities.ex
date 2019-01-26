defmodule Firestone.Definition.Entities do
  @entities Map.new(List.flatten([
      Firestone.Definition.Set.Sprint_1.entities,
      Firestone.Definition.Set.Sprint_2.entities,
      Firestone.Definition.Set.Sprint_3.entities,
      Firestone.Definition.Set.Sprint_4.entities,
    ]), fn e -> {e.game_id, e} end)

  @game_ids Map.new(for {game_id, %{name: name}} <- @entities, into: %{} do
    {name, game_id}
  end)

  def get %{game_id: game_id} do
    unless Map.has_key? @entities, game_id do
      raise "No definition with :game_id #{game_id}"
    end

    Map.get(@entities, game_id)
  end

  def get %{name: name} do
    get name
  end

  def get name do
    unless Map.has_key? @game_ids, name do
      raise "No definition with :name #{name}"
    end

    get %{ game_id: @game_ids[name] }
  end

end
