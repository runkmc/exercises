pieces :: Integral a => a -> a
pieces x = 8 * x

pieces_per_person :: Integral a => a -> a -> a
pieces_per_person people pizzas = (pieces pizzas) `div` people

leftovers :: Integral a => a -> a -> a
leftovers people pizzas = (pieces pizzas) `mod` people

main = do
    putStrLn "How many people?"
    people_string <- getLine
    putStrLn "How many pizzas?"
    pizzas_string <- getLine

    let people = read people_string :: Int
        pizzas = read pizzas_string :: Int
    putStrLn(people_string ++ " people with " ++ pizzas_string ++ " pizzas.")
    putStrLn("Each person gets " ++ (show (pieces_per_person people pizzas)) ++ " pieces.")
    putStrLn("There are " ++ (show (leftovers people pizzas)) ++ " leftover pieces.")
