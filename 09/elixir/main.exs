{len, _} = Integer.parse IO.gets "Length in feet?\n"
{wid, _} = Integer.parse IO.gets "Width in feet?\n"
square_feet = len * wid
gallons = (square_feet / 350) |> Float.ceil |> trunc

IO.puts "You will need to purchase #{gallons} gallons of paint to cover #{square_feet} square feet."
