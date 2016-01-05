{people, _} = Integer.parse IO.gets "How many people?\n"
{pizzas, _} = Integer.parse IO.gets "How many pizzas?\n"
{pieces_per_pizza, _} = Integer.parse IO.gets "How many slices per pizza?\n"
total_pieces = pizzas * pieces_per_pizza

IO.puts "Each person gets #{div total_pieces, people} pieces of pizza."
IO.puts "There are #{rem total_pieces, people} leftover pieces."
