fun strip (x:string) = String.implode(List.take(String.explode(x), (String.size(x) - 1))); 

TextIO.print("What is your name? ");
val name = (TextIO.inputLine TextIO.stdIn);
Option.app(fn x => TextIO.print("Hello, " ^ strip(x) ^ ", nice to meet you!")) name;
