class Integer
  def to_fahrenheit 
    (self * (9.0 / 5)) + 32
  end

  def to_celsius 
    (self - 32) * (5.0 / 9)
  end
end

puts "Convert to C)elsius or to F)ahrenheit? "
answer = gets.strip
puts "Enter the temperature:"
temp = gets.to_i
if answer.upcase == "C"
  puts "The temperature in Celsius is #{temp.to_celsius}"
else
  puts "The temperature in Fahrenheit is #{temp.to_fahrenheit}"
end
