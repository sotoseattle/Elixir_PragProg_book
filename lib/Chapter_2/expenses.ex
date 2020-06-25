
defmodule Expenses do
    @moduledoc """
    Create an expression that solves the following problem: Sarah has bought ten slices 
    of bread for ten cents each, three bottles of milk for two dollars each, and a cake 
    for fifteen dollars. How many dollars has Sarah spent? 
    """

    def expenses(lista) do
        lista
          |> Enum.map(fn h -> h.quantity * h.price end)
          |> Enum.sum
    end

end

grocery_list = [
    %{ quantity: 10, price: 0.1, thing: 'slice of bread'},
    %{ quantity: 3, price: 2, thing: 'bottles of milk'},
    %{ quantity: 1, price: 15, thing: 'cake'}]

IO.puts(Expenses.expenses(grocery_list))