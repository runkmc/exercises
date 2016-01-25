class BMI 

  attr_reader :number

  def initialize weight, height
    @number = (weight / (height * height)) * 703
  end

end

puts "Weight: "
weight = gets.to_f
puts "Height: "
height = gets.to_f

bmi = BMI.new(weight, height).number

case
  when bmi < 18.5
    printf "Your BMI is %.1f.\nYou are underweight.", bmi
  when bmi > 25.0
    printf "Your BMI is %.1f.\nYou are overweight.", bmi
  else
    printf "Your BMI is %.1f.\nYou are the ideal weight.", bmi
end
