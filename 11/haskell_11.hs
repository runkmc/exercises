import Text.Printf

exchange :: Fractional a => a -> a -> a
exchange euros rate = euros * (rate / 100)

main = do
    putStrLn "How many euros are you exchanging? "
    euros <- getLine
    putStrLn "What is the exchange rate "
    rate <- getLine

    let e = read euros :: Double
        r = read rate :: Double

    printf "%.0f euros at an exchange rate of %.2f is $%.2f U.S. Dollars" e r (exchange e r)

