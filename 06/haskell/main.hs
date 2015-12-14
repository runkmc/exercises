import Data.Time.Clock
import Data.Time.Calendar

main = do
    putStrLn "What is your current age?"
    inputage <- getLine
    putStrLn "At what age would you like to retire?"
    inputretireAt <- getLine
    
    now <- getCurrentTime
    let age = read inputage :: Integer
        retireAt = read inputretireAt :: Integer
        (year, month, day) = toGregorian $ utctDay now
        retirementYear = year + (retireAt - age)
    putStrLn("You have " ++ (show (retireAt - age)) ++ " years left until you can retire.")
    putStrLn("It's " ++ (show year) ++ ", so you can retire in " ++ (show retirementYear))
