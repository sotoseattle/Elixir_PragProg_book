defmodule PragprogTest do
  use ExUnit.Case
  doctest Pragprog

  test "greets the world" do
    assert Pragprog.hello() == :world
  end
end
