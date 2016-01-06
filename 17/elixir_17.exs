defmodule BAC do
  def check oz, weight, "M", hours do
    total = ((oz * 5.14) / (weight * 0.73)) - (0.15 * hours)
    reply total
  end

  def check oz, weight, "F", hours do
    total = ((oz * 5.14) / (weight * 0.66)) - (0.15 * hours)
    reply total
  end

  def reply(total) when total > 0.79 do
    "It is not legal for you to drive."
  end

  def reply _ do
    "It is legal for you to drive."
  end
end

{oz, _} = Float.parse(IO.gets "Total ounces? ")
{weight, _} = Float.parse(IO.gets "Weight? ")
sex = String.upcase(String.strip(IO.gets "Sex? "))
{hours, _} = Float.parse(IO.gets "Hours since last drink? ")

IO.puts(BAC.check oz, weight, sex, hours)
