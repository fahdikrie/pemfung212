{-
    References:
        1. https://stackoverflow.com/questions/48990254/length-of-list-using-foldr-in-haskell
        2. https://stackoverflow.com/questions/7862881/how-can-i-write-reverse-by-foldr-efficiently-in-haskell/7862945
        3. https://stackoverflow.com/questions/41408922/data-type-for-tree-in-haskell

-}

-- No. 1 — Fungsi length baru dengan map dan fold
length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

newLength :: [a] -> Int
newLength xs = foldr f 0 xs
    where f x y = y + 1

-- No. 2 — Bikin ulang fungsi addUp dengan fun1 dan fun2
greaterOne :: Int -> Bool
greaterOne n = n > 1

addOne :: Int -> Int
addOne n = n + 1

addUp :: [Int] -> [Int]
addUp ns = filter greaterOne (map addOne ns)

fun1 :: Int -> Int
fun1 n = n + 1

fun2 :: Int -> Bool
fun2 n = n >= 1

newAddUp :: [Int] -> [Int]
newAddUp ns = map fun1 (filter fun2 ns)

-- No. 3a — sum of squares with map & fold
sumOfSquares1 :: Int -> Int
sumOfSquares1 n = foldr (\x y -> x*x + y) 0 [1..n]

-- No. 3b — sum of squares with fold & lisf of comprehension
sumOfSquares2 :: Int -> Int
sumOfSquares2 n = sum [x * x | x <- [1..n]]

-- No. 4 — Return sum bilangan kelipatan 5
isMultipleOfFive :: Int -> Bool
isMultipleOfFive n = (n `mod` 5) == 0

multipleOfFive :: [Int] -> Int
multipleOfFive xs = length (filter isMultipleOfFive xs)

-- No. 5 — Total function
-- total :: (Int -> Int) -> N
-- total n = sum

-- No. 6 — Fungsi reverse dengan foldr
reverse' :: [Int] -> [Int]
reverse' xs = foldr (\f g x -> g (f : x)) id xs []

-- No. 7 — Soal non programming
-- Tidak ada program

-- No. 8 — Fungsi noUpperIndent
noUpperIndent :: String -> String
noUpperIndent = filter (\x -> (x `elem` ['a'..'z']))

-- No. 9 — Buat data struktur Tree
data Tree a
    = Nil
    | Node a (Tree a) (Tree a) -- value, left child, right sibling

-- No. 10 — Buat fungsi foldTree untuk Tree

