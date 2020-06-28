defmodule Examples do

    def count_down_to(0), do: 0
    def count_down_to(n) do
        IO.puts n
        count_down_to(n-1)
    end

    def sum_list([]), do: 0
    def sum_list([head| tail]) do
        head + sum_list(tail)
    end

    def sum_list_opt(listo), do: sum_list_opt(listo, 0.0)
    def sum_list_opt([], acc), do: acc
    def sum_list_opt([head| tail], acc) do
        sum_list_opt(tail, head + acc)
    end

    def facto(0), do: 1
    def facto(n) when n>0, do: n * facto(n-1)
    def facto(n) when n<0, do: {:error, "factorial of negative number"}

    def facto_opt(n), do: facto_opt(n, 1)
    def facto_opt(0, acc), do: acc
    def facto_opt(n, acc) do
        facto_opt(n-1, n * acc)
    end

    

end

# IO.inspect Examples.count_down_to(10)

# IO.inspect Examples.sum_list([1,2,3,4,5])
# IO.inspect Examples.sum_list_opt([1,2,3,4,5])

# IO.inspect Examples.facto(0)
# IO.inspect Examples.facto(4)
# IO.inspect Examples.facto(-10)

# IO.inspect Examples.facto_opt(0)
# IO.inspect Examples.facto_opt(4)