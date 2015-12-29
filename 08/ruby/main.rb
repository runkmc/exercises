puts "How many people? "
people = gets.to_i
puts "How many pizzas? "
pizzas = gets.to_i
pieces = 8 * pizzas

puts "#{people} people with #{pizzas} pizzas."
puts "Each person gets #{pieces / people} pieces of pizza."
puts "There are #{pieces % people} leftover pieces."
