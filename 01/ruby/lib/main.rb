require './greeter'

puts "What is your name?"
name = gets
puts Greeter.new(name: name.strip).reply
