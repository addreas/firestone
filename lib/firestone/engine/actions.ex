defmodule Firestone.Engine.Actions do
  alias Firestone.Engine.{State, Mechanics}

  @doc """
      iex> Firestone.create_game([%{deck: ["Imp", "Imp"]}])
      ...> |> draw_card(:p1)
      ...> |> State.player(:p1, :hand)
      ...> |> Enum.map(& &1.name)
      ["Imp"]

      iex> Firestone.create_game([%{deck: ["Imp", "Imp"]}])
      ...> |> draw_card(:p1)
      ...> |> draw_card(:p1)
      ...> |> List.first()
      ...> |> State.player(:p1, :hand)
      ...> |> Enum.count()
      2

      iex> Firestone.create_game([%{}, %{deck: ["Imp", "Imp"]}], %{current_player: :p2})
      ...> |> draw_card(:p2)
      ...> |> draw_card(:p2)
      ...> |> draw_card(:p2)
      ...> |> List.first()
      ...> |> State.player(:p2, :fatigue)
      1

  """
  def draw_card(states, player_id) do
    events =
      case State.player(states, player_id, :deck) do
        [] ->
          states |> Mechanics.apply_fatigue(player_id)

        [card | cards] ->
          states
          |> State.update_player(player_id, :deck, cards)
          |> State.update_player(player_id, :hand, &[card | &1])
      end

    [events | states]
  end
end
