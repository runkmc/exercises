quote = String.strip IO.gets("What is the quote?\n")
who = String.strip IO.gets("Who said it?\n")
total = who <> " says, \"" <> quote <>"\""
IO.puts(total)
