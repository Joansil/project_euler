defmodule PeOneTest do
  use ExUnit.Case
  doctest PeOne

  test "sum_of_all/2 will find the sum of all the multiples of 3 or 5 below 1000." do
    assert PeOne.sum_of_all(1, 999) == 233_168
    assert PeOne.sum_of_all(1, 9) == 23
  end
end
