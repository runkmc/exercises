import Text.Printf

bmi :: Double -> Double -> String
bmi weight height
    | number <= 18.5 = printf "Your BMI is %.1f.\nYou are underweight." number
    | number < 25.0 = printf "Your BMI is %.1f.\nYou are within the ideal weight range." number
    | otherwise = printf "Your BMI is %.1f.\nYou are overweight." number
    where number = (weight / (height * height)) * 703

main = do
    putStrLn "Your weight:"
    w <- getLine
    putStrLn "Your height:"
    h <- getLine
    let weight = read w :: Double
        height = read h :: Double

    putStrLn (bmi weight height)
