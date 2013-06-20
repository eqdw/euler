defmodule Prob004 do

  def convert_digit(1) do "1" end
  def convert_digit(2) do "2" end
  def convert_digit(3) do "3" end
  def convert_digit(4) do "4" end
  def convert_digit(5) do "5" end
  def convert_digit(6) do "6" end
  def convert_digit(7) do "7" end
  def convert_digit(8) do "8" end
  def convert_digit(9) do "9" end
  def convert_digit(0) do "0" end

  def convert_number(0) do
    "0"
  end
  def convert_number(num) do
    convert_number(num, "")
  end

  def convert_number(0, stringified) do
    stringified
  end
  def convert_number(num, stringified) do
    convert_number(div(num, 10), (num |> rem(10) |> convert_digit) <> stringified)
  end

  def reverse(str) do
    reverse(str, "")
  end
  def reverse(nil, reversed) do
    reversed
  end
  def reverse(str, reversed) do
    reverse( String.slice(str, 1, String.length(str)-1), String.slice(str, 0, 1) <> reversed)
  end

  def is_palindrome(num) do
    convert_number(num) == num |> convert_number |> reverse
  end

  def answer do
    iterate(100, 100, 0)
  end

  def iterate(i, j, max) when (i < 1000 and j < 1000) do
    product = i * j
    if product > max && is_palindrome(product) do
      iterate(i, j+1, product)
    else
      iterate(i, j+1, max)
    end
  end
  def iterate(i, j, max) when i < 1000 and j == 1000 do
    iterate(i+1, 100, max)
  end
  def iterate(i, j, max) when i == 1000 do
    max
  end
end
