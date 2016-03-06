defmodule AskForNumber do
  def ask(msg, n, numbers) when n <= 1 do
    {num,_} = Integer.parse IO.gets msg
    [num | numbers]
  end

  def ask(msg, n, numbers) do
    {num,_} = Integer.parse IO.gets msg
    ask(msg, (n - 1), [num | numbers])
  end

  def ask(msg, n) do
    ask(msg, n, [])
  end
end

numbers = AskForNumber.ask("Enter a number: ", 5)
IO.puts "The total is #{Enum.sum numbers}"
