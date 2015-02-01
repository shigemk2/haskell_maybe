test (Just x) = x  -- 引数でパターンマッチ
-- test Nothing  = Nothing  -- 型が違うのでエラー
test Nothing  = 0  -- 忘れずに書く

main = do
    print $ test $ Just 1
    print $ test $ Nothing
