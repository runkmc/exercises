monthName :: Int -> String
monthName 1  = "January"
monthName 2  = "February"
monthName 3  = "March"
monthName 4  = "April"
monthName 5  = "May"
monthName 6  = "June"
monthName 7  = "July"
monthName 8  = "August"
monthName 9  = "September"
monthName 10 = "October"
monthName 11 = "November"
monthName 12 = "December"
monthName x  = "What now?"

main = do
    putStrLn "Please enter the number of the month: "
    m <- getLine
    let month = read m :: Int
    putStrLn ("The name of the month is " ++ monthName month ++ ".")

