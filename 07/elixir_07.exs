defmodule Conversion do
  def meters(l, w), do: Float.round(((l * w) * 0.09290304), 3)
end

{len, _} = Integer.parse IO.gets "What is the length of the room in feet?\n"
{width, _} = Integer.parse IO.gets "What is the width of the room in feet?\n"
IO.puts "You entered dimensions of #{len} by #{width} feet."
IO.puts "The area is #{len * width} feet or #{Conversion.meters(len, width)} meters."
