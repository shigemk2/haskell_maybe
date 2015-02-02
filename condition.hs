import Data.Char
import Control.Monad

getch s n
    | n < length s = Just $ s !! n  -- 指定した位置の文字を返す
    | otherwise    = Nothing        -- 範囲外

test s = do
    ch0 <- getch s 0                -- 文字列の範囲外なら脱出
    ch1 <- getch s 1                -- 文字列の範囲外なら脱出
    ch2 <- getch s 2                -- 文字列の範囲外なら脱出
    unless (isUpper ch0) Nothing    -- 大文字でなければ脱出
    unless (isLower ch1) Nothing    -- 小文字でなければ脱出
    unless (isDigit ch2) Nothing    -- 数字でなければ脱出
    return s                        -- 最終的な返り値

main = do
    print $ test "Aa0"              -- OK
    print $ test "A"                -- 文字不足
    print $ test "aa0"              -- ch0で失敗
    print $ test "AA0"              -- ch1で失敗
    print $ test "Aaa"              -- ch2で失敗
