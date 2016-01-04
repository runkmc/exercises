gallons_needed :: Double -> Double -> Int
gallons_needed x y = ceiling ((square_feet y x) / 350)

square_feet :: Num a => a -> a -> a
square_feet x y = x * y

main = do
    putStrLn "Length of room?"
    l <- getLine
    putStrLn "Width of room?"
    w <- getLine
    let len = read l :: Double
    let wid = read w :: Double

    putStrLn("You will need to purchase " ++ (show $ gallons_needed len wid) ++ " gallons to cover " ++ (show $ square_feet len wid) ++ " square feet.")
