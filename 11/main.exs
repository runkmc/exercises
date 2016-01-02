{euros, _} = Float.parse IO.gets "How many euros are you exchanging?\n"
{rate, _} = Float.parse IO.gets "What is the current exchange rate?\n"

dollars = Float.round((euros * (rate / 100)), 2)

IO.puts "#{euros} euros at an exchange rate of #{rate} is #{dollars} U.S. dollars."
