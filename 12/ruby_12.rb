def total_amount(principal, rate, years)
  principal * (1 + ((0.01 * rate) * years))
end

puts "Enter the principal: "
principal = gets.to_i
puts "Enter the rate of interest: "
rate = gets.to_f
puts "Enter the number of years: "
years = gets.to_i

printf "After %i years at %.1f%%, the investment will be worth $%.2f.", years, rate, total_amount(principal, rate,years)
