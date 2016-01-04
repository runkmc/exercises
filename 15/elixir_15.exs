defmodule Password do
  def check "abc$123" do
    "Welcome!"
  end

  def check _ do
    "I don't know you."
  end
end

pass = String.strip IO.gets "What is the password? "
IO.puts Password.check(pass)
