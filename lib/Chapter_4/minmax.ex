defmodule MinMax do
    @moduledoc """
    Write two recursive functions: one that finds the biggest element of
    a list and another that finds the smallest.
    """

    def max([head | tail]), do: MinMax.max(tail, head)
    def max([], n), do: n
    def max([head | tail], n) when head < n, do: MinMax.max(tail, n)
    def max([head | tail], n) when head >= n, do: MinMax.max(tail, head)

    def min([head | tail]), do: MinMax.min(tail, head)
    def min([], n), do: n
    def min([head | tail], n) when head >= n, do: MinMax.min(tail, n)
    def min([head | tail], n) when head < n, do: MinMax.min(tail, head)

end


IO.inspect MinMax.max([4, 2, 16, 9, 10])
# => 16

IO.inspect MinMax.min([4, 2, 16, 9, 10])
# => 2

