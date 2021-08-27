defmodule PeSevenTest do
  use ExUnit.Case
  doctest PeSeven

  test "st_prime/1, return the Nth prime number" do
    assert PeSeven.st_prime(6) == 13
    assert PeSeven.st_prime(10001) == 104_743
  end
end
