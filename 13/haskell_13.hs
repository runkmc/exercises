import Text.Printf

amount :: Float -> Float -> Float -> Float -> Float
amount principal rate years times = principal * (( 1 + ((rate * 0.01) / times))**(times * years))

main = do
    putStrLn "What is the principal amount?"
    p <- getLine
    putStrLn "What is the rate?"
    r <- getLine
    putStrLn "Number of years?"
    n <- getLine
    putStrLn "How many times is the interest compounded per year?"
    t <- getLine

    let principal = read p :: Float
        rate = read r :: Float
        years = read n :: Float
        times = read t :: Float

    printf "$%.2f invested at %.1f%% for %.0f years compounded %.0f times per year is $%.2f." principal rate years times (amount principal rate years times)
