defmodule PeNineTest do
  use ExUnit.Case
  doctest PeNine

  test "prod_abc/1, return the product of the Pythagorean triplet for which a + b + c = N" do
    assert PeNine.prod_abc(1000) == 31_875_000
  end
end
