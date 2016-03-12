myMax :: [Int] -> Int
myMax (x:xs) = myMaxInt x xs

myMaxInt :: Int -> [Int] -> Int
myMaxInt candidate [] = candidate
myMaxInt candidate (x:xs) = if candidate > x
                            then myMaxInt candidate xs
                            else myMaxInt x xs


main = do
    putStrLn "Enter the first number:"
    firstNumber <- getLine
    putStrLn "Enter the second number:"
    secondNumber <- getLine
    putStrLn "Enter the third number:"
    thirdNumber <- getLine
    
    let first  = read firstNumber  :: Int
        second = read secondNumber :: Int
        third  = read thirdNumber  :: Int

    putStrLn ("The largest number is " ++ (show (myMax [first, second, third])))
