main = do
    putStrLn "What is the first number?"
    x <- getLine
    putStrLn "What is the second number?"
    y <- getLine
    let num1 = read x :: Int
        num2 = read y :: Int
    putStrLn(x ++ " + " ++ y ++ " = " ++ (show (num1 + num2)))
    putStrLn(x ++ " - " ++ y ++ " = " ++ (show (num1 - num2)))
    putStrLn(x ++ " * " ++ y ++ " = " ++ (show (num1 * num2)))
    putStrLn(x ++ " / " ++ y ++ " = " ++ (show (num1 `div` num2)))
