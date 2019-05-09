defmodule FirestoneTest do
  use ExUnit.Case, async: true

  alias Firestone.Engine.{State, Entities}

  doctest Firestone.Definition.Entities, import: true

  doctest Firestone, import: true
  doctest Firestone.Engine.State, import: true
  doctest Firestone.Engine.Predicates, import: true
  doctest Firestone.Engine.Actions, import: true
  doctest Firestone.Engine.Entities, import: true
  doctest Firestone.Engine.Mechanics, import: true
end
