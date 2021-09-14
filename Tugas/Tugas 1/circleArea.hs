circleArea:: Floating r => (r) -> r
circleArea r = pi * r * r

main:: IO()
main = do
    putStrLn "Insert the radius of the circle: "
    r <- readLn
    print $ circleArea r