import Control.Applicative

main = do
    print $ Just 1  <|> Nothing                -- 左のみ
    print $ Just 1  <|> Just 2                 -- 左のみ
    print $ Nothing <|> Just 2                 -- 左→右
    print  (Nothing <|> Nothing :: Maybe Int)  -- 左→右（要型注釈）
