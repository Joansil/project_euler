defmodule PeTenTest do
  use ExUnit.Case
  doctest PeTen

  test "sum_of_nth_primes/1, return the sum of all the primes until N" do
    assert PeTen.sum_of_nth_primes(10) = 17
    assert PeTen.sum_of_nth_primes(100) = 1060
    assert PeTen.sum_of_nth_primes(2_000_000) = 142_913_828_922
  end
end
