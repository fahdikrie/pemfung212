{-
    Reference:
        > https://stackoverflow.com/questions/5952167/how-do-i-print-a-list-in-haskell
        > https://stackoverflow.com/questions/26847192/reverse-a-list-in-haskell/26847373
        > https://stackoverflow.com/questions/40934263/haskell-generic-type-to-generic-and-int
-}

-- data IList =
--     I Int
--     | S String
--     | E String
--     deriving Show
-- reverseList :: [IList] -> [IList]

reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

seqOfStringToInt :: String -> [Int]
seqOfStringToInt seq = map read $ words seq

main :: IO()
main = do
    putStrLn "Insert Int list items you want to reverse (separated by whitespace): "
    seq <- getLine
    let listItems = seqOfStringToInt seq
    print $ reverseList listItems