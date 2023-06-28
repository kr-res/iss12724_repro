defmodule ElixirIss12724ReproTest do
  use ExUnit.Case
  doctest ElixirIss12724Repro

  test "greets the world" do
    assert ElixirIss12724Repro.hello() == :world
  end
end
