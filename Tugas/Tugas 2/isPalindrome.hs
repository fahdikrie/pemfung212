{-
    References:
        > https://stackoverflow.com/questions/30242668/remove-characters-from-string-in-haskell
        > https://codereview.stackexchange.com/questions/24340/palindrome-test-in-haskell
        > https://stackoverflow.com/questions/3098877/remove-white-space-from-string
-}

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
