defmodule PeFiveTest do
  use ExUnit.Case
  doctest PeFive

  test "smallest_positive_divisible/1, returns the smallest positive number that is evenly divisible by
  all of the numbers from 1..N-range " do
    assert PeFive.smallest_positive_divisible(10) == 2520
    assert PeFive.smallest_positive_divisible(20) == 232_792_560
    assert PeFive.smallest_positive_divisible(30) == 2_329_089_562_800
  end
end
