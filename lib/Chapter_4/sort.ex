defmodule Sort do
    @moduledoc """
    We’ve created a function that sorts the items of a list in ascending order.
    Now create a Sort.descending/1 function that sorts the elements in descending order.
    """

    def desc([]), do: []
    def desc([x]), do: [x]
    def desc(listo) do
        half_size = div(Enum.count(listo), 2)
        {list_a, list_b} = Enum.split(listo, half_size)
        merge(
            desc(list_a),
            desc(list_b)
        )
    end

    defp merge([], list_b), do: list_b
    defp merge(list_a, []), do: list_a
    defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a >= head_b do
        [head_a | merge(tail_a, list_b)]
    end
    defp merge(list_a = [head_a | _], [head_b | tail_b]) when head_a < head_b do
        [head_b | merge(list_a, tail_b)]
    end

end

IO.inspect Sort.desc([6, 4, 7, 2, 9, 5])