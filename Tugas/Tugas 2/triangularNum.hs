{-
    Reference:
        > https://stackoverflow.com/questions/29943390/how-would-i-write-a-triangle-function-recursively
-}

triangular :: Int -> Int
triangular 0 = 0
triangular n = n + triangular (n-1)

main:: IO()
main = do
    putStrLn "Insert the nth number of triangular you want to count: "
    nth <- readLn
    print $ triangular nth