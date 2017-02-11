fun strip (x:string) = String.implode(List.take(String.explode(x), (String.size(x) - 1))); 

TextIO.print("What is the input string? ");
val inputString = strip (valOf (TextIO.inputLine TextIO.stdIn));
TextIO.print(inputString ^ " has " ^ Int.toString(String.size(inputString)) ^ " characters.");
