defmodule PeSixTest do
  use ExUnit.Case
  doctest PeSix

  test "sum_sqr_diff/1, returns difference between the sum of the squares of the first natural numbers and
  the square of the sum from 1..N-range " do
    assert PeSix.sum_sqr_diff(10) == 2640
    assert PeSix.sum_sqr_diff(100) == 25_164_150
    assert PeSix.sum_sqr_diff(1000) == 250_166_416_500
  end
end
