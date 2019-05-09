defmodule FirestoneTest do
  use ExUnit.Case, async: true

  alias Firestone.Engine.{State, Entities, Predicates, Actions}

  doctest Firestone.Definition.Entities, import: true

  doctest Firestone, import: true
  doctest Firestone.Engine.State, import: true
  doctest Firestone.Engine.Predicates, import: true
  # doctest Firestone.Engine.Actions, import: true
end
