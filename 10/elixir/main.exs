{item1, _} = Float.parse IO.gets "Enter the price of item 1\n"
{quant1, _} = Integer.parse IO.gets "Enter the quantity of item 1\n"
{item2, _} = Float.parse IO.gets "Enter the price of item 2\n"
{quant2, _} = Integer.parse IO.gets "Enter the quantity of item 2\n"
{item3, _} = Float.parse IO.gets "Enter the price of item 3\n"
{quant3, _} = Integer.parse IO.gets "Enter the quantity of item 3\n"

subtotal = Float.round(((item1 * quant1) + (item2 * quant2) + (item3 * quant3)), 2)
tax = Float.round((subtotal * 0.055), 2)
total = Float.round((subtotal + tax), 2)

IO.puts "Subtotal: $#{Float.to_string(subtotal, [decimals: 2])}"
IO.puts "Tax: $#{Float.to_string(tax, [decimals: 2])}"
IO.puts "Total: $#{Float.to_string(total, [decimals: 2])}"
