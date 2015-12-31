area :: Num a => a -> a -> a
area x y = x * y

meters :: Fractional a => a -> a -> a
meters x y = (area x y) * 0.09290304

main = do
    putStrLn "What is the length of the room in feet? "
    len <- getLine
    putStrLn "What is the width of the room in feet? "
    width <- getLine
    putStrLn("You entered dimensions of " ++ len ++ " feet by " ++ width ++ " feet.")

    let l = read len :: Double
        w = read width :: Double
    putStrLn("The area is")
    putStrLn((show (area l w)) ++ " square feet")
    putStrLn((show (meters l w)) ++ " square meters")


