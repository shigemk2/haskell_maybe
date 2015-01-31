main = do
    print $ do
        a <- Just 1     -- 値がある
        return $ a * 2  -- 処理される
    print $ do
        a <- Just 1     -- 値がある
        b <- Nothing    -- 値がない
        return $ a * b  -- 処理されない
