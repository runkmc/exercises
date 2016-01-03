main = do
    putStrLn "Enter a noun:"
    noun <- getLine
    putStrLn "Enter a verb:"
    verb <- getLine
    putStrLn "Enter an adjective:"
    adj <- getLine
    putStrLn "Enter an adverb:"
    adv <- getLine
    putStrLn ("Do you " ++ verb ++ " your " ++ adj ++ " " ++ noun ++ " " ++ adv ++ "? That's hilarious!")
