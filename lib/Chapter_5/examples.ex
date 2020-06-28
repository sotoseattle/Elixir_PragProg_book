defmodule Examples do

    def test_data do
        [ %{ title: "Longsword", price: 50, magic: false},
          %{ title: "Healing Potion", price: 60, magic: true},
          %{ title: "Rope", price: 10, magic: false},
          %{ title: "Dragon's Spear", price: 100, magic: true}
        ]
    end

    def each([], _fo), do: nil
    def each([head | tail], fo) do
        fo.(head)
        each(tail, fo)
    end

    def map(listo, fo), do: map(listo, [], fo)
    def map([], acc, _fo), do: acc
    def map([head | tail], acc, fo) do
        map(tail, acc ++ [fo.(head)], fo)
    end

    def reduce(listo, fo), do: reduce(listo, 0, fo)
    def reduce([], acc, _fo), do: acc
    def reduce([head | tail], acc, fo) do
        reduce(tail, fo.(head, acc), fo)
    end

    def filter(listo, fo), do: filter(listo, [], fo)
    def filter([], acc, _fo), do: acc
    def filter([head | tail], acc, fo) do
        if fo.(head) do
            filter(tail, acc ++ [head], fo)
        else
            filter(tail, acc, fo)
        end
    end

    def build(keyword, listo), do: build(keyword, listo, "")
    def build(_keyword, [], acc), do: acc
    def build(keyword, [head | tail], acc) do
        build(keyword, tail, acc <> String.at(keyword, head))
    end

    def of(0), do: 1
    def of(n) when n > 0 do
        # 1..10_000_000
        Stream.iterate(1, &(&1 + 1))
            |> Enum.take(n)
            |> Enum.reduce(&(&1 * &2))
    end
end

Examples.each(Examples.test_data, fn x -> IO.puts(x.title) end)

IO.inspect Examples.map(["cats", "dogs", "flowers"], &String.upcase/1)
IO.inspect Examples.reduce([1,2,3,4], fn x, y -> x + y end)
IO.inspect Examples.filter(Examples.test_data, fn x -> x.price < 70 end)
IO.inspect Examples.build("world", [4, 1, 1, 2])
IO.inspect Examples.of(10)