defmodule PeSix do
  @moduledoc """
  Showing the 6th problem of Project Euler
  """

  @doc """
  Sum square difference

  The sum of the squares of the first ten natural numbers is,
    1² + 2² + ... + 10² = 385
  The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)² = 552 = 3025

  Hence the difference between the sum of the squares of the first ten natural
  numbers and the square of the sum is `3025 − 385 = 2640`.
  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.

  ##Examples
  iex> PeSix.sum_sqr_diff(10)
  2640
  iex> PeSix.sum_sqr_diff(100)
  25164150
  iex> PeSix.sum_sqr_diff(1000)
  250166416500
  """
  def sum_sqr_diff(number) do
    sum_sqr_diff_range(1..number)
  end

  def sum_of_sqr(number),
    do:
      number
      |> Enum.reduce(0, fn x, acc -> acc + sqr(x) end)

  def sqr(x), do: x * x

  def sqr_of_sum(number),
    do:
      number
      |> Enum.reduce(0, fn x, acc -> acc + x end)
      |> sqr()

  def sum_sqr_diff_range(x), do: sqr_of_sum(x) - sum_of_sqr(x)
end
