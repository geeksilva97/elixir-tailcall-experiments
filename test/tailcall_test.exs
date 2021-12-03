defmodule TailcallTest do
  use ExUnit.Case
  doctest Tailcall

  test "greets the world" do
    assert Tailcall.hello() == :world
  end
end
