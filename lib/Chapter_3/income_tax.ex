defmodule IncomeTax do
    @moduledoc """
    Create a function that calculates income tax following these rules: 
     - a salary equal or below $2,000 pays no tax; 
     - below or equal to $3,000 pays 5%; 
     - below or equal to $6,000 pays 10%; 
     - everything higher than $6,000 pays 15%. 
    """

    defp rate(salary) when salary <= 2000, do: 0.00 
    defp rate(salary) when salary <= 3000, do: 0.05
    defp rate(salary) when salary <= 6000, do: 0.10
    defp rate(_salary), do: 0.15

    def income_tax salary do
        salary * rate(salary)
    end
end

# IO.puts IncomeTax.income_tax(6000)