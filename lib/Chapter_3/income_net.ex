defmodule IncomeNet do
    @moduledoc """
    Create an Elixir script where users can type their salary and see the 
    income tax and the net wage. You can use the module from the previous exercise, 
    but this script should parse the user input and display a message when users 
    type something that is not a valid number. 
    """
    require Integer
    Code.require_file("income_tax.ex")

    defp net(salary) when salary >= 0, do: salary - IncomeTax.income_tax(salary) 
    defp net(_salary), do: "No negative numbers"

    def income_net do
        inputo = IO.gets("input your base salary\n") |> String.trim

        case Integer.parse(inputo) do
            :error -> "Invalid Salary"
            {salary, _} -> net(salary)
        end
    end

end

IO.inspect IncomeNet.income_net