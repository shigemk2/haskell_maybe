test (Just x) = x  -- 引数でパターンマッチ
test Nothing  = 0  -- 忘れずに書く

main = do
    print $ test $ Just 1
    print $ test $ Nothing
