check_bac :: Double -> Double -> String -> Double -> String
check_bac ounces weight "M" hours
    | bac >= 0.8 = "Your BAC is " ++ (show bac) ++ ". You aren't legal to drive."
    | otherwise = "Your BAC is " ++ (show bac) ++ ". You're legal."
    where bac = male_bac ounces weight hours

check_bac ounces weight "F" hours
    | bac >= 0.8 = "Your BAC is " ++ (show bac) ++ ". You aren't legal to drive."
    | otherwise = "Your BAC is " ++ (show bac) ++ ". You're legal."
    where bac = female_bac ounces weight hours

male_bac :: (Fractional f) => f -> f -> f -> f
male_bac ounces weight hours = ((ounces * 5.14) / (weight * 0.66)) - (0.15 * hours)

female_bac :: (Fractional f) => f -> f -> f -> f
female_bac ounces weight hours = ((ounces * 5.14) / (weight * 0.73)) - (0.15 * hours)

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
