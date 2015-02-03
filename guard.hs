import Data.Char
import Control.Monad

getch s n
    | n < length s = Just $ s !! n
    | otherwise    = Nothing

test s = do
    ch0 <- getch s 0
    ch1 <- getch s 1
    ch2 <- getch s 2
    guard $ isUpper ch0  -- 使用箇所
    guard $ isLower ch1  -- 使用箇所
    guard $ isDigit ch2  -- 使用箇所
    return s

main = do
    print $ test "Aa0"   -- OK
    print $ test "A"     -- 文字不足
    print $ test "aa0"   -- ch0で失敗
    print $ test "AA0"   -- ch1で失敗
    print $ test "Aaa"   -- ch2で失敗
