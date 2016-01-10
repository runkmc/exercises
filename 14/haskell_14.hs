import Text.Printf

tax :: Fractional a => a -> String -> a
tax subtotal "WI" = subtotal * 0.055
tax subtotal _ = 0.0

total :: Fractional a => a -> String -> a
total order "WI" = order + (tax order "WI")
total order _ = order

main  = do
    putStrLn "What is the order amount?"
    o <- getLine
    putStrLn "What is the state?"
    state <- getLine

    let order = read o :: Double

    printf "The subtotal is $%.2f \n" order
    printf "The tax is $%.2f \n" (tax order state)
    printf "The total is $%.2f \n" (total order state)
