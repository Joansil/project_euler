defmodule PeFive do
  @moduledoc """
      Showing the 5th problem of Project Euler
  """
  @doc """
  Smallest multiple

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  ## Examples
  iex> PeFive.smallest_positive_divisible(10)
  2520
  iex> PeFive.smallest_positive_divisible(20)
  232792560
  iex> PeFive.smallest_positive_divisible(30)
  2329089562800
  """

  def smallest_positive_divisible(number) do
    smallest_divisible_range(number)
  end

  defp smallest_divisible_range(x),
    do:
      1..x
      |> Enum.reduce(1, fn y, z -> div(y * z, list_divisor(y, z)) end)

  defp list_divisor(0, z), do: z
  defp list_divisor(y, z), do: list_divisor(rem(z, y), y)
end
