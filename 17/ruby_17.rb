class BAC

  def initialize(oz, weight, gender, hours) 
    @oz = oz
    @weight = weight
    @gender = self.gender_number gender.strip
    @hours = hours
  end

  def bac_number
    (@oz * (5.14 / @weight) * @gender) - (0.015 * @hours)
  end

  def legal?
    bac_number >= 0.08 ? false : true
  end

  def gender_number gender
    if gender == "M"
      0.73
    else
      0.66
    end
  end

end

puts "Alcohol in ounces?"
oz = gets.to_i
puts "Weight?"
weight = gets.to_i
puts "Gender?"
gender = gets
puts "Hours since your last drink?"
hours = gets.to_i

bac = BAC.new(oz, weight, gender, hours)

printf "Your BAC is %.2f\n", bac.bac_number

if bac.legal?
  puts "It is legal for you to drive"
else 
  puts "It is not legal for you to drive"
end
