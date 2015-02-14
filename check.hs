import Data.Char
import Control.Applicative
import Control.Monad

check s = do
    guard $ length s >= 3
    do
        guard $ isDigit $ s !! 0
        guard $ isUpper $ s !! 1
        <|> do
        guard $ isUpper $ s !! 0
        guard $ isLower $ s !! 1
    guard $ isLower $ s !! 2
    Just s

main = do
    -- print $ numUpper 3 2 "123AB"
    -- print $ numUpper 3 2 "123ABC"
    -- print $ numUpper 3 2 "12ABC"
    print $ check "1"
    print $ check "2Ab"
    print $ check "Abc"
    print $ check "Ab1"
    print $ check "1AB"
    print $ check "Abb"
    print $ check "2Ab111"
