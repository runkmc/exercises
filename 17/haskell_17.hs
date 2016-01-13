check_bac :: Double -> Double -> String -> Double -> String
check_bac ounces weight gender hours
    | bac_number >= 0.8 = "Your BAC is " ++ (show bac_number) ++ ". You aren't legal to drive."
    | otherwise = "Your BAC is " ++ (show bac_number) ++ ". You're legal."
    where bac_number = bac ounces weight gender hours

bac :: Double -> Double -> String -> Double -> Double
bac ounces weight gender hours = ((ounces * 5.14) / (weight * g)) - (0.15 * hours)
    where g = gender_number gender

gender_number :: String -> Double
gender_number "M" = 0.73
gender_number "F" = 0.66

main = do
    putStrLn "Total ounces:"
    o <- getLine
    putStrLn "Weight:"
    w <- getLine
    putStrLn "Sex:"
    sex <- getLine
    putStrLn "Hours since last drink:"
    h <- getLine

    let ounces = read o :: Double
        weight = read w :: Double
        hours  = read h :: Double

    putStrLn (check_bac ounces weight sex hours)
