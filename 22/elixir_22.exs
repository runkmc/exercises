defmodule MyMax do
  
  def my_max list do
    my_max(hd(list), tl(list))
  end

  def my_max(candidate, []) do
    candidate
  end

  def my_max(candidate, list) when hd(list) > candidate do
    my_max(hd(list), tl(list))
  end

  def my_max(candidate, list) when hd(list) < candidate do
    my_max(candidate, tl(list))
  end

end


{first_number, _}  = Integer.parse IO.gets "Enter the first number:"
{second_number, _} = Integer.parse IO.gets "Enter the second number:"
{third_number, _}  = Integer.parse IO.gets "Enter the second number:"

max = MyMax.my_max [first_number, second_number, third_number]
IO.puts "The largest number is #{max}"
