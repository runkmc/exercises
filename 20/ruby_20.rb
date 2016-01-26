class Tax

  def initialize(amount, state, county)
    @amount = amount
    @state = state
    @county = county
  end

  def tax
    case @state
    when "IL"
      @amount * 0.08
    when "WI"
      wisconsin_tax
    else
      0.0
    end
  end

  def wisconsin_tax
    case @county
    when "Dunn"
      @amount * 0.054
    when "Eau Claire"
      @amount * 0.055
    else
      @amount * 0.05
    end
  end
end

puts "What is the order amount "
amount = gets.to_i
puts "What state do you live in "
state = gets.strip
county = nil
if state == "WI"
  puts "Which county "
  county = gets.strip
end

taxes = Tax.new(amount, state, county)

if taxes.tax > 0 
  printf "The tax is $%.2f\n", taxes.tax
end
printf "The total is $%.2f", (amount + taxes.tax)
