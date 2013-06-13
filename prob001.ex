defmodule Prob001 do
  def multiple_sums(n) do
    Enum.reduce 1..n, 0, fn
      x, acc when (rem(x, 3) == 0 or rem(x, 5) == 0) -> acc + x
      _, acc -> acc
    end
  end
end
