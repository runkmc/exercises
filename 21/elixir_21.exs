defmodule MonthConverter do
  def convert x do
    case x do
      1  -> "January"
      2  -> "February"
      3  -> "March"
      4  -> "April"
      5  -> "May"
      6  -> "June"
      7  -> "July"
      8  -> "August"
      9  -> "September"
      10 -> "October"
      11 -> "November"
      12 -> "December"
    end
  end
end

{month, _} = Integer.parse IO.gets "Please enter the number of the month:"
IO.puts "The name of the month is #{MonthConverter.convert(month)}"
