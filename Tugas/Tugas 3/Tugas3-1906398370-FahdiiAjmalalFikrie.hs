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
invest :: Double -> Double -> Double -> Double
-- invest nom inv dur = nom + interest (nom * (1+inv/100)) (inv/100) (dur-1)
invest nom inv dur = interest nom inv dur

interest :: Double -> Double -> Double -> Double
interest nom inv 0 = nom
interest nom inv 1 = interest (nom * (1+inv)) inv 0
interest nom inv dur = nom + interest (nom * (1+inv)) inv (dur-1)
-- interest nom inv 1 = (1+inv)
-- interest nom inv dur = interest nom inv (dur-1) * (1+inv) * nom
-- interest nom inv 1 =  (nom * (1+inv)) + interest nom inv 0
-- interest nom inv dur =  ((nom * (1+inv)) + nom) * interest
-- interest nom inv 1 =  interest (nom * (1+inv)) inv 0 + nom
-- interest nom inv dur =  interest (nom * (1+inv)) inv (dur-1) + nom
