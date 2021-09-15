{-
Reference:
    > https://stackoverflow.com/questions/34817219/haskell-recursive-list-summation
    > https://stackoverflow.com/questions/43718678/read-strings-from-keyboard-in-haskell
    > https://stackoverflow.com/questions/8879391/how-do-i-convert-string-into-list-of-integers-in-haskell
-}

listSum :: [Int] -> Int
listSum [] = 0
listSum (x:t) = x + listSum t

seqOfStringToInt :: String -> [Int]
seqOfStringToInt seq = map read $ words seq

main:: IO()
main = do
    seq <- getLine
    let listOfInt = seqOfStringToInt seq
    print $ listSum listOfInt