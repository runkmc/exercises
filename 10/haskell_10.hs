import Text.Printf

main = do
    putStrLn "Enter the price of item 1:"
    price1 <- getLine
    putStrLn "Enter the quantity of item 1:"
    quantity1 <- getLine
    putStrLn "Enter the price of item 2:"
    price2 <- getLine
    putStrLn "Enter the quantity of item 2:"
    quantity2 <- getLine
    putStrLn "Enter the price of item 3:"
    price3 <- getLine
    putStrLn "Enter the quantity of item 3:"
    quantity3 <- getLine

    let p1 = read price1 :: Double
        q1 = read quantity1 :: Double
        p2 = read price2 :: Double
        q2 = read quantity2 :: Double
        p3 = read price3 :: Double
        q3 = read quantity3 :: Double
        subtotal = ((p1 * q1) + (p2 * q2) + (p3 * q3))

    printf "Subtotal: $%.2f \n" subtotal
    printf "Tax: $%.2f \n" (subtotal * 0.055)
    printf "Total: $%.2f \n" (subtotal + (subtotal * 0.055))
