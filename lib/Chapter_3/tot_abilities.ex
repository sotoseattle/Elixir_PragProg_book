defmodule TotAbilites do
    @moduledoc """
    In RPGs, players have points to spend on their character attributes. Create a function
    that returns the total number of points players have spent on their characters. 
    The function will receive a map containing the STR, DEX, and INT values. 
    Each point in STR should be multiplied by two, and DEX and INT be multiplied by three. 
    """

    def tot_abilities %{ strength: str, dexterity: dex, intelligence: int } do
        str * 3 + dex * 2 + int * 2
    end

end

IO.inspect TotAbilites.tot_abilities(
    %{ strength: 10, dexterity: 13, intelligence: 8 }
)