defmodule GeneralStore do
    @moduledoc """
    In the section Transforming Lists, we traveled to a fantasy world and
    enchanted some items. Create a new module called GeneralStore where you can
    create a function that filters based on whether the products are magical.
    You can use the same test data from EnchanterShop :
    """

    def filter_items(listo, magic: is_magical), do: filter_items(listo, is_magical, [])

    def filter_items([], _is_magical, solution), do: solution

    def filter_items([ head = %{magic: is_magical} | tail ], is_magical, solution) do
        filter_items(tail, is_magical, solution ++ [head])
    end
    
    def filter_items([ _head | tail ], is_magical, solution) do
        filter_items(tail, is_magical, solution)
    end

    def test_data do
        [ %{ title: "Longsword", price: 50, magic: false},
          %{ title: "Healing Potion", price: 60, magic: true},
          %{ title: "Rope", price: 10, magic: false},
          %{ title: "Dragon's Spear", price: 100, magic: true}
        ]
    end
end

IO.inspect GeneralStore.filter_items(GeneralStore.test_data, magic: true)
# => [%{title: "Healing Potion", price: 60, magic: true},
# %{title: "Dragon's Spear", price: 100, magic: true}]

IO.inspect GeneralStore.filter_items(GeneralStore.test_data, magic: false)
# => [%{title: "Longsword", price: 50, magic: false},
# %{title: "Rope", price: 10, magic: false}] ​ 