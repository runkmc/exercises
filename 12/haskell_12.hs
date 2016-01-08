import Text.Printf

calculate_amount :: Fractional a => a -> a -> a -> a
calculate_amount principal rate years = principal * (1 + ((0.01 * rate) * years))

main = do
    putStrLn "Enter the principal:"
    p <- getLine
    putStrLn "Enter the rate of interest:"
    r <- getLine
    putStrLn "Enter the number of years:"
    y <- getLine

    let principal = read p :: Double
        rate = read r :: Double
        years = read y :: Double

    printf "After %.0f years at %.1f%%, the investment will be worth $%.2f." years rate (calculate_amount principal rate years)
