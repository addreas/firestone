defmodule Firestone.Engine.Entities do
  def create(name, type, id) when is_binary(name) do
    create(%{name: name}, type, id)
  end

  def create(data, type, id) when is_map(data) do
    definition = Firestone.Definition.Entities.get(data)

    Map.merge(
      Map.take(definition, [:game_id, :name]),
      Map.put_new(data, :id, "#{type}#{id}")
    )
  end

  def add_damage(entity, amount) do
    Map.update(entity, :damage_taken, amount, &(&1 + amount))
  end

  @doc """
  Seems to work
      iex> create("Imp", :hand, "some_id")
      ...> |> health()
      1

      iex> create("Imp", :hand, "some_id")
      ...> |> add_damage(1)
      ...> |> health()
      0

      iex> health(:NOT_AN_ENTITY)
      ** (ArgumentError) Invalid entity: :NOT_AN_ENTITY

  """
  def health(%{game_id: game_id, damage_taken: damage_taken}) do
    %{health: health} = Firestone.Definition.Entities.get(%{game_id: game_id})
    health - damage_taken
  end

  def health(%{game_id: game_id}) do
    Firestone.Definition.Entities.get(%{game_id: game_id}).health
  end

  def health(entity) do
    raise ArgumentError, message: "Invalid entity: #{inspect(entity)}"
  end
end
