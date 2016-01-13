check_age :: Int -> String
check_age age
    | age >= 16 = "You are old enough to drive"
    | age < 16 = "You are not old enough to drive."

main = do
    putStrLn "What is your age?"
    a <- getLine
    let age = read a :: Int
    putStrLn (check_age age)
