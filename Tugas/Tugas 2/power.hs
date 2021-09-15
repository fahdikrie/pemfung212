{-
    Reference:
        > https://www.some.ox.ac.uk/wp-content/uploads/2019/08/HaskellTutorial.pdf
-}

-- let power 0 f = (\x->x);
-- power n f = f.(power (n-1) f)
--     in (power 2 (\x -> x + 1)) 2

-- power base exp
--     | (exp == 0) = 1
--     | (exp > 0) = power base exp-1
--     | otherwise = 0

power x n =
    if n==0 then 1
    else if n>0 then x * power x (n-1)
    else error "negative power"

main :: IO()
main = do
    putStrLn "Insert base number: "
    base <- readLn :: IO Int
    putStrLn "Insert exponent number: "
    exp <- readLn
    print $ power base exp