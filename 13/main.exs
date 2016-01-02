{principal, _} = Integer.parse IO.gets "Enter the principal: "
{rate, _} = Float.parse IO.gets "Enter the rate of interest: "
{years, _} = Integer.parse IO.gets "Enter the number of years: "
{times, _} = Integer.parse IO.gets "Enter the number of times the interest is compounded per year: "

total = principal * :math.pow((1 + ((rate * 0.01) / times)), (times * years))  

IO.puts "$#{principal} invested at #{rate}% for #{years} years compounded #{times} times per year is $#{Float.round(total, 2)}."
