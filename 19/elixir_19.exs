defmodule BMI do

  def bmi(weight, height) do
    check((weight / (height * height)) * 703)
  end

  def check(n) when n > 32.5 do
    "You are overweight."
  end

  def check(n) when n < 18.5 do
    "You are underweight."
  end

  def check _ do
    "You are within the ideal weight range"
  end
end

{height, _} = Integer.parse IO.gets "Height:"
{weight, _} = Integer.parse IO.gets "Weight:"
IO.puts BMI.bmi(weight, height)
