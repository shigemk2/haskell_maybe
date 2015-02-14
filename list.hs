import Control.Applicative

main = do
    print $ [1] <|> []             -- 左→右
    print $ [1] <|> [2]            -- 左→右
    print $ []  <|> [2]            -- 左→右
    print  ([]  <|> []  :: [Int])  -- 左→右（要型注釈）
