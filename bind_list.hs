main = do
    print $ do
        a <- [1]        -- 値がある
        return $ a * 2  -- 処理される
    print $ do
        a <- [1]        -- 値がある
        b <- []         -- 値がない
        return $ a * b  -- 処理されない
