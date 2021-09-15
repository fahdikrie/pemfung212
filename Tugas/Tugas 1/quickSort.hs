{-
    Reference:
        > https://gist.github.com/thurloat/1752010
-}

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (p:xs) = (quickSort greater) ++ [p] ++ (quickSort lesser)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

seqOfStringToInt :: String -> [Int]
seqOfStringToInt seq = map read $ words seq

main :: IO()
main = do
    putStrLn "Insert Int list items you want to sort (separated by whitespace): "
    seq <- getLine
    let listItems = seqOfStringToInt seq
    print $ quickSort listItems