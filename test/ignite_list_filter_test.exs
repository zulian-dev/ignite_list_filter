defmodule IgniteListFilterTest do
  use ExUnit.Case
  doctest IgniteListFilter

  test "greets the world" do
    assert IgniteListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
  end
end
