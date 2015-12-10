main = do
    putStrLn "What is the quote?"
    q <- getLine
    putStrLn "Who said it?"
    n <- getLine
    putStrLn (n ++ " says, \"" ++ q ++ "\"")
