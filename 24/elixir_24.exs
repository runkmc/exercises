defmodule Anagram do

  def check first_string, second_string do
    first_letters = Enum.sort(String.to_char_list first_string)
    second_letters = Enum.sort(String.to_char_list second_string)
    first_letters == second_letters
  end

  def print_results true, first_string, second_string do
    IO.puts "#{first_string} and #{second_string} are anagrams."
  end

  def print_results false, first_string, second_string do
    IO.puts "#{first_string} and #{second_string} are not anagrams."
  end
end

IO.puts "Here be the anagram checker"
first_string = String.strip IO.gets "Enter the first string: "
second_string = String.strip IO.gets "Enter the second string: "

Anagram.print_results(Anagram.check(first_string, second_string), first_string, second_string)
