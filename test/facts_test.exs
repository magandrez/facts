defmodule FactsTest do
  use ExUnit.Case
  doctest Facts

  test "facts behavior without params" do
    assert Facts.greet("") == "Usage: facts greet <name>"
  end

  test "facts behavior with a name" do
    assert Facts.greet("foobar") == "Hello, foobar!"
  end
end
