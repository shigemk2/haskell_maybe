main = do
    print $ do
        a <- Just 1     -- 1を取り出す
        b <- Nothing    -- 取り出せない（失敗）
        return $ a * b  -- 処理されない
