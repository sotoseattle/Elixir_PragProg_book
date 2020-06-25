
defmodule Trip do
    @moduledoc """
    Bob has traveled 200 km in four hours. Using variables, print a message showing 
    his travel distance, time, and average velocity. 
    """

    def avg_speed %{distance: d, time: t} = data_chof do
        %{data_chof | speed: d/t}
    end

    def format_trip %{distance: d, time: t, speed: s} do
        "#{d} km travelled over #{t} hours = average velocity of #{s} km/h"
    end

    def how_fast distance, time do
        %{distance: distance, time: time, speed: nil}
          |> avg_speed
          |> format_trip
    end
end

IO.puts Trip.how_fast(200, 4)