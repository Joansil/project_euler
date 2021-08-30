defmodule PeNine do
  @moduledoc """
    Showing the 9th problem of Project Euler
  """

  @doc """
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

  a2 + b2 = c2
  For example, 32 + 42 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.

  ##Example
  iex(1)> PeNine.prod_abc(1000)
  31875000
  """
  def prod_abc(number) do
    prod =
      for a <- 1..333,
          b <- (a + 1)..div(number - a, 2),
          c = number - a - b,
          pythagorean_trip(a, b, c),
          do: a * b * c

    prod
    |> List.first()
  end

  defp pythagorean_trip(a, b, c), do: sqr(a) + sqr(b) == sqr(c)
  defp sqr(x), do: x * x
end
