defmodule Prob006 do
  def sum_of_squares do
    Enum.reduce(1..100, 0, fn(x, acc) -> acc + (x*x) end)
  end

  def square_of_sums do
    sum = Enum.reduce(1..100, 0, fn(x,acc) -> x+acc end)
    sum * sum
  end

  def answer do
    answer = (sum_of_squares - square_of_sums) 
    if answer < 0 do
      -1 * answer
    else 
      answer
    end
  end
end
