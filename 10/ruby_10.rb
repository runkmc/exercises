puts "Enter the price of item 1: "
p1 = gets.to_f
puts "Enter the quantity of item 1: "
q1 = gets.to_f
puts "Enter the price of item 2: "
p2 = gets.to_f
puts "Enter the quantity of item 2: "
q2 = gets.to_f
puts "Enter the price of item 3: "
p3 = gets.to_f
puts "Enter the quantity of item 3: "
q3 = gets.to_f

subtotal = (p1 * q1) + (p2 * q2) + (p3 * q3)
tax = 0.055 * subtotal
total = subtotal + tax

printf "Subtotal: $%.2f\n", subtotal
printf "Tax: $%.2f\n", tax
printf "Total: $%.2f", total
