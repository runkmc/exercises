require 'date'
puts "What is your current age?"
current_age = gets.to_i
puts "At what age would you like to retire?"
retirement_age = gets.to_i

this_year = Date.today.year
years_left = retirement_age - current_age
retirement_year = this_year + years_left

puts "You have #{years_left} years left until you can retire."
puts "It's #{this_year}, so you can retire in #{retirement_year}."
