listSumOfSquares :: [Int] -> Int
listSumOfSquares [] = 0
listSumOfSquares (x:t) = (x * x) + listSumOfSquares t

seqOfStringToInt :: String -> [Int]
seqOfStringToInt seq = map read $ words seq

main:: IO()
main = do
    seq <- getLine
    let listOfInt = seqOfStringToInt seq
    print $ listSumOfSquares listOfInt