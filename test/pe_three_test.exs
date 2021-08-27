defmodule PeThreeTest do
  use ExUnit.Case
  doctest PeThree

  test "largest_factor/1, returns the largest prime factor of a given number" do
    assert PeThree.largest_factor(600_851_475_143) == 6857
    assert PeThree.largest_factor(13195) == 29
  end
end
