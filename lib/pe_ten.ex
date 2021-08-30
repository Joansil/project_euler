defmodule PeTen do
  @moduledoc """
    Showing the 10th problem of Project Euler
  """

  @doc """
  Summation of primes
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.

  ##Example
  iex> PeTen.sum_of_nth_primes(10)
  17
  iex> PeTen.sum_of_nth_primes(100)
  1060
  iex> PeTen.sum_of_nth_primes(2000000)
  142913828922
  """

  def sum_of_nth_primes(number) do
    1..number

    Stream.iterate(0, &(&1 + 1))
    |> Stream.filter(&validate_prime/1)
    |> Stream.take_while(&(&1 < number))
    |> Enum.reduce(0, &(&1 + &2))
  end

  def validate_prime(x) when x in [2, 3, 5, 7, 11, 13], do: true

  def validate_prime(x) do
    Enum.all?(
      2..round(:math.sqrt(x)),
      fn y -> rem(x, y) != 0 end
    )
  end
end
