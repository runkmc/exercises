check_password :: String -> String
check_password "abc$123" = "Welcome!"
check_password _ = "I don't know you."

main = do
    putStrLn "What is the password?"
    p <- getLine
    putStrLn (check_password p)
