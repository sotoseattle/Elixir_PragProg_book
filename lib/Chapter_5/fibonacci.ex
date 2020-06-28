defmodule Fibonacci do
    @moduledoc """
    Create a function that generates the Fibonacci sequence up to a given quantity.
    Use streams to produce it. You’ll need to take a look at the Stream.unfold/2 function.
    Make a recursion version first.
    => each number is the sum of the previous two numbers
    """

    def fibo_rec(0), do: []
    def fibo_rec(1), do: [0]
    def fibo_rec(n), do: fibo_rec( [1, 0], n )

    def fibo_rec(acc, 2), do: reverse_rec(acc)
    def fibo_rec([h_1, h_2 | tail], n) do
        new_seq = [h_1 + h_2, h_1, h_2 | tail]
        fibo_rec( new_seq, n-1)
    end

    def reverse_rec(listo), do: reverse_rec(listo, [])
    def reverse_rec([], listo), do: listo
    def reverse_rec([head | tail], augmenting) do
        reverse_rec(tail, [head] ++ augmenting)
    end

    def fibo(0), do: []
    def fibo(1), do: [0]
    def fibo(n) when n > 1 do    
        Stream.iterate([1, 0], fn([a, b | t]) -> [a+b, a, b | t] end)
            |> Enum.take(n-1)
            |> Enum.at(-1)
            |> Enum.reverse
    end

end

IO.inspect Fibonacci.reverse_rec([1,2,3,4,5])
IO.inspect Fibonacci.fibo_rec(0)
IO.inspect Fibonacci.fibo_rec(1)
IO.inspect Fibonacci.fibo_rec(2)
IO.inspect Fibonacci.fibo_rec(8)
IO.inspect Fibonacci.fibo(0)
IO.inspect Fibonacci.fibo(1)
IO.inspect Fibonacci.fibo(2)
IO.inspect Fibonacci.fibo(8)

