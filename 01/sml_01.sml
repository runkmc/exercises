fun strip (x:string) = String.implode(List.take(String.explode(x), (String.size(x) - 1))); 

TextIO.print("What is your name? ");
val name = valOf (TextIO.inputLine TextIO.stdIn);
TextIO.print("Hello, " ^ strip(name) ^ ", nice to meet you!");
