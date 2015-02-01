main = do
    print $ do
        a <- Just 1  -- 1を取り出す
        return a     -- モナドに入れて返す
