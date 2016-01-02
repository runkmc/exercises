{f, _} = Integer.parse IO.gets("What is the first number?\n")
{s, _} = Integer.parse IO.gets("What is the second number?\n")
IO.puts "#{f} + #{s} = #{f + s}"
IO.puts "#{f} - #{s} = #{f - s}"
IO.puts "#{f} * #{s} = #{f * s}"
IO.puts "#{f} / #{s} = #{f / s}"
