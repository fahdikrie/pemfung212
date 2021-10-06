{-
    References:
        1. Algoritma Sieve of Eratosthenes di slide perkuliahan
        2. https://mmhaskell.com/blog/2018/1/15/need-to-be-faster-be-lazy
        3. https://stackoverflow.com/questions/50145509/pascal-triangle-in-haskell-nested-lists
        4. https://programmingpraxis.com/2011/08/30/hamming-numbers/
-}

-- No. 1 — Generasi bilangan prima menggunakan algo. Sieve of Eratosthenes
sieve :: [Integer] -> [Integer]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

primes :: [Integer]
primes = sieve [2..]

-- No. 2 — Tuliskan program untuk meng-generate triple bilangan bulat yang menyatakan sisi-sisi segitiga siku-siku secara infinite.
triplePytha :: [(Int, Int, Int)]
triplePytha = [
    (a,b,c) |
        a <- [1..1000],
        b <- [1..1000],
        c <- [1..1000],
        a + b + c < 1000,
        (a * a) + (b * b) == c * c
    ]

-- No. 3 — Jumlah berlanjut
jumlahBerlanjut :: [Int] -> [Int]
jumlahBerlanjut xs = sequences
    where sequences = 0 : zipWith (+) sequences xs

-- No. 4 — Hamming code/problem
merge :: (Ord a) => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x < y     = x : (merge xs (y:ys))
                    | x > y     = y : (merge (x:xs) ys)
                    | x == y    = y : merge xs ys

hammingNumbers :: [Integer]
hammingNumbers = 1 : merge hN2 (merge hN3 hN5) where
                hN2 = map (*2) hammingNumbers
                hN3 = map (*3) hammingNumbers
                hN5 = map (*5) hammingNumbers

-- No. 5 — Pascal Triangle
pascal_infinite :: [[Integer]]
pascal_infinite = [1] : map (\l -> zipWith (+) (l ++ [0]) (0:l)) pascal_infinite
