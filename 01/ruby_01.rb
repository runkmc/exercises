class Greeter

  def initialize name:
    @name = name
  end

  def reply
    "Hello, #{@name}, nice to meet you!"
  end

end

puts "What is your name?"
name = gets
puts Greeter.new(name: name.strip).reply
