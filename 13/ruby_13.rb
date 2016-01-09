puts "Enter the principal:"
principal = gets.to_i
puts "Enter the rate of interest:"
rate = gets.to_f
puts "Enter the number of years:"
years = gets.to_f
puts "Enter the number of times interest is compounded per year:"
times_per_year = gets.to_i

total = principal * ((1 + ((rate * 0.01) / times_per_year)) ** (times_per_year * years))

printf "$%i invested at %.1f%% per year for %i years compounded %i times per year is $%.2f.", principal, rate, years, times_per_year, total

