defmodule TempConverter do
  def convert(temp, "C") do
    "The temperature in Celsius is #{(temp - 32) * (5 / 9)}."
  end

  def convert(temp, "F") do
    "The temperature in Fahrenheit is #{(temp * (9 / 5)) + 32}."
  end
end

defmodule AskTemp do
  def ask "C" do
    {temp, _} = Integer.parse IO.gets "Please enter the temperature in Celsius: "
    IO.puts TempConverter.convert(temp, "F")
  end

  def ask "F" do
    {temp, _} = Integer.parse IO.gets "Please enter the temperature in Fahrenheit: "
    IO.puts TempConverter.convert(temp, "C")
  end
end

t = String.upcase(String.strip(IO.gets "Convert from C\)elsius or F\)ahrenheit?  "))
AskTemp.ask t

