defmodule PeFour do
  @moduledoc """
  Showing the first problem of Project Euler
  """

  @doc """
  Largest palindrome product

  A palindromic number reads the same both ways.
  The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
  Find the largest palindrome made from the product of two 3-digit numbers.

  ## Explain
  The product will return in a six-digit palindrome `abccda` like this
    mn = 100000a + 10000b + 1000c + 100c + 10b + a
       = 100001a + 10010b + 1100c
       = 11 (9091a + 910b + 100c)
  We can say that the largest palindrome starts with 9:
    mn = 11 (81819 + 910b + 100c)
  So, one of these numbers, its divisible by 11.

  ##Examples
  iex> PeFour.largest_palidrome_product(2)
  9009
  iex> PeFour.largest_palidrome_product(3)
  906609
  """

  def largest_palidrome_product(digits) do
    digits
    |> list_start
    |> list_numbers
    |> made_product
    |> List.flatten()
    |> Enum.max()
  end

  defp list_start(digits) do
    [round(9 * :math.pow(10, digits - 1)) | round(:math.pow(10, digits) - 1)]
  end

  defp list_numbers([h | t]) do
    factor_eleven = Enum.filter(h..t, fn x -> rem(x, 11) == 0 end)
    [factor_eleven | h..t]
  end

  defp made_product([h | t]) do
    Enum.reduce(t, [], fn number, acc ->
      product = Enum.map(h, &(&1 * number))
      form_palindrome = Enum.filter(product, &is_palidrome(&1))
      [acc | form_palindrome]
    end)
  end

  def is_palidrome(result_product) do
    show_palindrome = Integer.to_string(result_product)
    show_palindrome == String.reverse(show_palindrome)
  end
end
