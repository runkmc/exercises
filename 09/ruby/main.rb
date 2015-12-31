puts "Length of room? "
length = gets.to_i
puts "Width of room? "
width = gets.to_i

puts "You will need to purchase #{ ((length * width) / 350.0).ceil } gallons of paint to cover #{length * width} square feet."

