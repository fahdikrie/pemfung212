{-
    References:
        1. https://stackoverflow.com/questions/27554272/how-do-you-define-and-use-curry-and-uncurry-prelude-functions-in-haskell
        2. https://stackoverflow.com/questions/5863370/exponential-function-with-addition
-}

-- No. 1 — myCurry & myUncurry
myCurry :: ((a, b) -> c) -> a -> b -> c
myCurry f = \x y -> f (x, y)

myUncurry :: (a -> b -> c) -> ((a, b) -> c)
myUncurry f = \(x,y) -> f x y

-- No. 2 — Fibonacci
fibonacci :: Integer -> Integer
fibonacci 0 = 1
fibonacci 1 = 0
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

fibonaccis :: Integer -> [Integer]
fibonaccis n = map fibonacci [1..n]

-- No. 3 — Power function w/ only addition
multiply :: Integer -> Integer -> Integer
multiply a 0 = 0
multiply a 1 = a
multiply a b = a + multiply a (b-1)

power :: Integer -> Integer -> Integer
power a 0 = 1
power a 1 = a
power a b = multiply a (power a (b-1))

-- No. 4 — sumEven
-- Kalo tipenya Real malah compile error :()
sumEven :: [Integer] -> Integer
sumEven [] = 0
sumEven (x:xs)
    | (x `mod` 2 == 0) = x + sumEven xs
    | otherwise        = 0 + sumEven xs

-- No. 5 — Kalkulator Investasi
invest :: Integer -> Integer -> Integer
invest nom inv 0 = 0
invest nom inv dur = nom + (nom * (1 + 3%)) + invest nom inv (dur-1)