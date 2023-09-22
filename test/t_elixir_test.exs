defmodule TElixirTest do
  use ExUnit.Case
  doctest TElixir

  test "greets the world" do
    assert TElixir.hello() == :world
  end
end
