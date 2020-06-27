defmodule TicTacToe do
@moduledoc """
Create a function that returns Tic-Tac-Toe game winners.
You can represent the board with a tuple of nine elements, where each group 
of three items is a row. The return of the function should be a tuple.
When we have a winner, the first element should be the atom :winner, and the second 
should be the player. When we have no winner, the tuple should contain one item that 
is the atom :no_winner . It should work like this: 
TicTacToe.winner({
    :x ​, ​ :o ​, ​ :x ​,
    :o ​, ​ :x ​, ​ :o ​,
    :o ​, ​ :o ​, ​ :x ​ ​ })
# {:winner, :x} ​ ​ ​ 
TicTacToe.winner({
    :x ​, ​ :o ​, ​ :x ​,
 ​ ​  :o ​, ​ :x ​, ​ :o ​,
  ​  :o ​, ​ :x ​, ​ :o ​ ​ })
# :no_winner ​ 
"""
    
    defp result([a, a, a]), do: true
    defp result(_listo), do: false

    defp solution([]), do: :no_winner
    defp solution([[a, a, a]]), do: {:winner, a}

    def winner({a, b, c, d, e, f, g, h, i }) do
        [[a, b, c], [d, e, f], [g, h, i],
         [a, d, g], [b, e, h], [c, f, i],
         [a, e, i], [g, e, c]]
          |> Enum.filter(&result/1)
          |> solution
    end

end

play = {
    :x, :x, :o,
    :o, :x, :x,
    :x, :o, :x }
IO.inspect TicTacToe.winner(play)

play = {
    :x, :o, :x,
    :o, :x, :o,
    :o, :x, :o }
IO.inspect TicTacToe.winner(play)