defmodule FirestoneTest do
  use ExUnit.Case, async: true

  doctest Firestone, import: true

  doctest Firestone.Engine.State, import: true
end
