defmodule Firestone.Definition.Entities do
  @entities Map.new(
              List.flatten([
                Firestone.Definition.Set.Sprint_1.entities(),
                Firestone.Definition.Set.Sprint_2.entities(),
                Firestone.Definition.Set.Sprint_3.entities(),
                Firestone.Definition.Set.Sprint_4.entities()
              ]),
              fn e -> {e.game_id, e} end
            )

  @game_ids Map.new(
              for {game_id, %{name: name}} <- @entities, into: %{} do
                {name, game_id}
              end
            )

  @doc """
    Gets by game_id
        iex> get(%{game_id: "EX1_598"})
        ...> |> Map.get(:name)
        "Imp"

    Gets by name
        iex> get("Imp")
        ...> |> Map.get(:name)
        "Imp"

    Gets by name object
        iex> get(%{name: "Imp"})
        iex> |> Map.get(:name)
        "Imp"

    Raises for invalid game_id
        iex> get(%{game_id: "NOT_AN_ENTITY"})
        ** (KeyError) No definition with :game_id NOT_AN_ENTITY

    Raises for invalid name
        iex> get("NOT_AN_ENTITY")
        ** (KeyError) No definition with :name NOT_AN_ENTITY
  """
  def get(%{game_id: game_id}) do
    unless Map.has_key?(@entities, game_id) do
      raise KeyError, message: "No definition with :game_id #{game_id}"
    end

    Map.get(@entities, game_id)
  end

  def get(%{name: name}) do
    get(name)
  end

  def get(name) do
    unless Map.has_key?(@game_ids, name) do
      raise KeyError, message: "No definition with :name #{name}"
    end

    get(%{game_id: @game_ids[name]})
  end
end
