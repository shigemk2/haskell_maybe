import Data.Char
import Control.Monad

numUpper x y s = do
    guard $ length s == x + y
    guard $ length (filter isDigit $ take x s) == x
    guard $ length (filter isUpper $ drop x s) == y
    Just s

main = do
    print $ numUpper 3 2 "123AB"
    print $ numUpper 3 2 "123ABC"
    print $ numUpper 3 2 "12ABC"
