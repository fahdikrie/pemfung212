{-
    References:
        > https://stackoverflow.com/questions/34817219/haskell-recursive-list-summation
        > https://stackoverflow.com/questions/43718678/read-strings-from-keyboard-in-haskell
        > https://stackoverflow.com/questions/8879391/how-do-i-convert-string-into-list-of-integers-in-haskell
-}

listCircleAreasSum :: [Int] -> Int
listCircleAreasSum [] = 0
listCircleAreasSum (x:t) = x + listSum t

seqOfStringToInt :: String -> [Int]
seqOfStringToInt seq = map read $ words seq

main:: IO()
main = do
    putStrLn "Insert the circle Areas you want to sum (separated by whitespace): "
    seq <- getLine
    let listOfCircleAreas = seqOfStringToInt seq
    print $ listCircleAreasSum listOfCircleAreas