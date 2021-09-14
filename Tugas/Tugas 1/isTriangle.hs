{-
Reference:
    > https://www.geeksforgeeks.org/check-whether-triangle-valid-not-sides-given/
-}

isTriangle :: Int -> Int -> Int -> [Char]
isTriangle s1 s2 s3
    | ((s1 + s2) <= s3) || ((s2 + s3) <= s1) || ((s3 + s1) <= s2)
        = "The 3 sides given is NOT a valid triangle"
    | otherwise
        = "The 3 sides given is a valid triangle"


main:: IO()
main = do
    putStrLn "Insert the 1st side of the triangle: "
    s1 <- readLn
    putStrLn "Insert the 2nd side of the triangle: "
    s2 <- readLn
    putStrLn "Insert the 3rd side of the triangle: "
    s3 <- readLn
    print $ isTriangle s1 s2 s3