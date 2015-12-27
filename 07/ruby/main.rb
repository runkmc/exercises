def rect x, y 
  x * y
end

def rect_in_meters x, y
  (rect x, y) * 0.09290304
end

puts "What is the length of the room in feet?\n"
length = gets.to_i
puts "What is the width of the room in feet?\n"
width = gets.to_i
puts "The area is\n#{rect length, width} square feet \n #{rect_in_meters length, width} square meters."
