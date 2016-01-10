class Order

  attr_reader :amount, :state

  def initialize(amount, state)
    @amount = amount
    @state = state
  end

  def total
    tax = self.tax
    tax + @amount
  end

  def tax
    if @state == "WI" 
      @amount * 0.055
    else
      0.0
    end
  end
end

puts "What is the order amount?"
amount = gets.to_f
puts "What is the state?"
state = gets.strip

order = Order.new(amount, state)

printf "The subtotal is $%.2f.\n", order.amount
printf "The tax is $%.2f.\n", order.tax
printf "The total is $%.2f.\n", order.total

