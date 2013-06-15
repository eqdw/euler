defmodule Prob002 do
  def even_fibs_sum(n) do
    n
      |> fibs
      |> Enum.reduce 0, fn 
           x, acc when (rem(x, 2) == 0) -> acc+x
           _, acc -> acc
         end
         
  end


  # gives list of fibs <= n
  # in reverse order from what you'd expect. Because
  # it doesn't matter
  def fibs(n) do
    fib(n, [2, 1])
  end
  
  def fib(n, acc=[a,b|_]) when (a+b) > n do
    acc
  end
  def fib(n, [a,b|tail]) do
    fib(n, [a+b,a,b|tail])
  end
end
