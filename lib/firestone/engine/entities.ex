defmodule Firestone.Engine.Entities do
  def create(name, type, id) when is_binary(name) do
    create %{name: name}, type, id
  end

  def create(data, type, id) when is_map(data) do
    definition = Firestone.Definition.Entities.get data

    Map.merge(
      Map.take(definition, [:game_id, :name]),
      Map.put_new(data, :id, "#{type}#{id}")
    )
  end
end
