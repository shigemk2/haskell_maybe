main = do
    print $ do
        Nothing   -- 脱出
        return 1  -- 処理されない
    print $ do
        []        -- 脱出
        return 1  -- 処理されない
