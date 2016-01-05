defmodule AgeTest do
  def old_enough(age) when age >= 16 do
    "You are old enough to legally drive"
  end

  def old_enough _ do
    "You are not old enough to drive"
  end
end

{age, _} = Integer.parse IO.gets "What is your age? "
IO.puts AgeTest.old_enough(age)
