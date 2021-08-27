defmodule PeFourTest do
  use ExUnit.Case
  doctest PeFour

  test "largest_palidrome_product/1, returns the largest palidrome made from the product of two N-digit numbers " do
    assert PeFour.largest_palidrome_product(3) == 906_609
    assert PeFour.largest_palidrome_product(2) == 9009
  end
end
