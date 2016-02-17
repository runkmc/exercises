{first, _}  = Integer.parse IO.gets "Enter a number:"
{second, _} = Integer.parse IO.gets "Enter a number:"
{third, _}  = Integer.parse IO.gets "Enter a number:"
{fourth, _} = Integer.parse IO.gets "Enter a number:"
{fifth, _}  = Integer.parse IO.gets "Enter a number:"

IO.puts "The total is #{Enum.sum [first,second,third,fourth,fifth]}"
