# convert a hearthstonejson.com cards.json to a alixir format
defmodule Firestone.Definition.Import do
  def import_cards do
    cards_json = File.read! "lib/firestone/definition/cards.json"
    cards_list = Poison.decode! cards_json

    cards = cards_list
    |> Enum.map(fn m ->
        for {k, v} <- m, into: %{}, do: {String.to_atom(k), v}
      end)
    |> Enum.map(fn m ->
        m
        |> Map.take([:attack, :cost, :health, :durability, :name, :mechanics, :flavor, :collectible, :elite, :artist, :text])
        |> Map.put(:game_id, m.id)

        |> Map.put(:dbf_id, Map.get(m, :dbfId))
        |> Map.put(:type, String.to_atom(String.downcase(Map.get(m, :type, "nil"))))
        |> Map.put(:set, String.to_atom(String.downcase(Map.get(m, :set, "nil"))))
        |> Map.put(:rarity, String.to_atom(String.downcase(Map.get(m, :rarity, "nil"))))
        |> Map.put(:faction, String.to_atom(String.downcase(Map.get(m, :faction, "nil"))))
        |> Map.put(:class, String.to_atom(String.downcase(Map.get(m, :cardClass, "nil"))))
      end)
    |> Enum.map(fn m ->
        for {k, v} <- m, not is_nil(v), into: %{}, do: {k, v}
      end)

    file = File.open! "lib/firestone/definition/cards.ex", [:write, :utf8]
    IO.inspect file, cards, limit: :infinity
    File.close file
  end
end
