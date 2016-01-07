puts "How many euros are you exchanging? "
euros = gets.to_i
puts "What is the exchange rate? "
rate = gets.to_f
dollars = euros * (rate / 100)

printf "%i euros at an exchange rate of %.2f is $%.2f.", euros, rate, dollars
