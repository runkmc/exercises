defmodule Tax do

  def get_tax(amount, "WI") do
    c = IO.gets "What county? "
    county = c |> String.strip |> String.downcase
    county_tax(amount, county)
  end

  def get_tax(amount, "IL") do
    amount * 0.08
  end

  def get_tax(_, _) do
    0.0
  end

  def county_tax(amount, "eau claire") do
    amount * 0.055
  end

  def county_tax(amount, "dunn") do
    amount * 0.054
  end

  def county_tax(amount, _) do
    amount * 0.05
  end

end

defmodule GetOrder do
  
  def order do
    {amount, _} = Float.parse IO.gets "What is the order amount? "
    state = IO.gets "What state do you live in? "
    state_abbr = state 
                  |> String.slice(0..1) 
                  |> String.upcase
    tax = Tax.get_tax(amount, state_abbr)
    print_total(tax, amount)
  end

  def print_total(0.0, amount) do
    :io.format("The total is $~.2f~n", [amount])
  end

  def print_total(tax, amount) do
    :io.format("The tax is $~.2f ~n", [tax])
    :io.format("The total is $~.2f ~n", [amount + tax])
  end
end

GetOrder.order
