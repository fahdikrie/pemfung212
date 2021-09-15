import Data.Char

isPalindrome :: String -> Bool
isPalindrome w = w == reverse w

stripLeadingWhitespace :: String -> String
stripLeadingWhitespace = unlines . map (dropWhile isSpace) . lines

removePunc :: String -> String
removePunc xs = [ x | x <- xs, not (x `elem` ",.?!-:;\"\'") ]

main :: IO()
main = do
    putStrLn "Write a sentence that you'd like to do a palindrome check: "
    sentence <- getLine
    let cleanSentence = stripLeadingWhitespace removePunc sentence
    print $ isPalindrome cleanSentence
