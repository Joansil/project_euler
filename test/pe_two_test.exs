defmodule PeTwoTest do
  use ExUnit.Case
  doctest PeTwo

  test "sum_even_value, returns of the sum of the even-valued terms of Fibonnacci serie until 4000000" do
    assert PeTwo.sum_even_value() == 4_613_732
  end
end
