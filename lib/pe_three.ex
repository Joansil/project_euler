defmodule PeThree do
  @moduledoc """
    Showing the 3th problem of Projec Euler
  """
  @doc """
  Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?

  ## Example
  iex> PeThree.largest_factor(13195)
  29
  iex> PeThree.largest_factor(600851475143)
  6857

  """

  def largest_factor(x) do
    x
    |> is_factor
    |> Enum.max()
  end

  def is_factor(number) do
    validate_prime(number, 2, [])
  end

  defp validate_prime(number, divisor, factor) when divisor > number do
    factor
  end

  defp validate_prime(number, divisor, factor) when rem(number, divisor) != 0 do
    validate_prime(number, divisor + 1, factor)
  end

  defp validate_prime(number, divisor, factor) when rem(number, divisor) == 0 do
    validate_prime(div(number, divisor), divisor, [divisor | factor])
  end
end
