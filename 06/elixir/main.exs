{current_age, _} = Integer.parse IO.gets "What is your current age?\n"
{retirement_age, _} = Integer.parse IO.gets "At what age would you like to retire?\n"

left = retirement_age - current_age
{{current_year, _, _}, _} = :calendar.local_time()
retirement_year = current_year + left

IO.puts "You have #{left} years left until you can retire."
IO.puts "It's #{current_year}, so you can retire in #{retirement_year}"
