import Text.Printf

convertTemp :: Double -> String -> (String, Double)
convertTemp t "C" = ("Celsius", ((t - 32) * (5.0 / 9)))
convertTemp t "F" = ("Fahrenheit", ((t * (9.0 / 5)) + 32))

main = do
    putStrLn "Convert to C)elsius or F)ahrenheit?"
    convertTo <- getLine
    putStrLn "Enter the temp:"
    t <- getLine
    let temp = read t :: Double
        result = convertTemp temp convertTo

    printf "The temperature in %s is %.1f" (fst result) (snd result)

