defmodule Checker do

  def check_password(password) do
    password_length = String.length password
    cond do
      password_length < 8  -> check_with_weak_length(password)
      password_length >= 8 -> check_with_strong_length(password)
    end
  end

  def check_with_weak_length(password) do
    contains_only_digits = String.match?(password, ~r/^[0-9]*$/)
    cond do
      contains_only_digits -> :very_weak
      true                 -> :weak
    end
  end

  def check_with_strong_length(password) do
    if String.match?(password, ~r/\W/) do
      :very_strong
    else
      :strong
    end
  end
end

password = String.strip IO.gets "Enter the Password\n"
strength = Checker.check_password(password)

case strength do
  :very_weak   -> IO.puts "#{password} is a very weak password."
  :weak        -> IO.puts "#{password} is a weak password."
  :strong      -> IO.puts "#{password} is a strong password."
  :very_strong -> IO.puts "#{password} is a very strong password."
end
