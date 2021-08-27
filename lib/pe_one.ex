defmodule PeOne do
  @moduledoc """
    Showing the first problem of Project Euler
  """

  @doc """
  Multiples of 3 and 5

  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.

  ## Examples
  iex> PeOne.sum_of_all(1,9)
  23
  iex> PeOne.sum_of_all(1,999)
  233168

  """
  def sum_of_all(x, y) do
    x..y
    |> Stream.filter(&(rem(&1, 3) == 0 or rem(&1, 5) == 0))
    |> Enum.sum()
  end
end
