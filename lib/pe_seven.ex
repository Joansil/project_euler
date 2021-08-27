defmodule PeSeven do
  @moduledoc """
    Showing the 7th problem of Project Euler
  """
  @doc """
  10001st prime

  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

  What is the 10 001st prime number?

  ##Example
  iex> PeSeven.st_prime(6)
  13
  iex> PeSeven.st_prime(10001)
  104743
  """

  def st_prime(x) do
    Stream.iterate(0, &(&1 + 1))
    |> Stream.filter(&validate_prime/1)
    |> Enum.take(x)
    |> List.last()
  end

  def validate_prime(x) when x in [2, 3, 5, 7, 11, 13], do: true

  def validate_prime(x) do
    Enum.all?(2..round(:math.sqrt(x)), fn number -> rem(x, number) != 0 end)
  end
end
