defmodule EnchanterShop do
    @moduledoc """
    In Chapter 4, ​Diving into Recursion, we built a module called EnchanterShop 
    that transforms mundane items into magical items for sale. 
    Build this module again, but now apply the higher-order functions that 
    you learned in this chapter. 
    """

    def test_data do
        [ %{ title: "Longsword", price: 50, magic: false},
          %{ title: "Healing Potion", price: 60, magic: true},
          %{ title: "Rope", price: 10, magic: false},
          %{ title: "Dragon's Spear", price: 100, magic: true}
        ]
    end

    def modify (item) do
        if item.magic do
            %{ title: "Edwing's #{item.title}",
               price: item.price * 3, 
               magic: item.magic }
        else
            item
        end
    end
    def enchant_for_sale(listo) do
        Enum.map(listo, &modify(&1))
    end
end

IO.inspect EnchanterShop.enchant_for_sale(EnchanterShop.test_data)