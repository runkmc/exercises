defmodule Tax do
  def order(amount, "WI") do
    tax = Float.round((amount * 0.055), 2)
    total = amount + tax
    :io.format("The subtotal is $~.2f~n", [amount / 1])
    :io.format("The tax is $~.2f~n", [tax / 1])
    :io.format("The total is $~.2f~n", [total / 1])
  end

  def order(amount, _) do
    :io.format("The total is $~.2f", [amount / 1])
  end
end

{amount, _} = Float.parse IO.gets "What is the order amount? " 
state = String.strip IO.gets "What is the state? "
Tax.order(amount, state)
