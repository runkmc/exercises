{principal, _} = Integer.parse IO.gets "Enter the principal: "
{rate, _} = Float.parse IO.gets "Enter the rate of interest: "
{years, _} = Integer.parse IO.gets "Enter the number of years: "

total = principal * (1 + ((rate * 0.01) * years))

IO.puts "After #{years} years at #{rate}%, the investment will be worth"
:io.format("$~.2f~n", [Float.round(total, 2)])
