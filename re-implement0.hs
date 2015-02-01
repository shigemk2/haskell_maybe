main = do
    print $ Just 1 >>= \a -> Just $ a * 2
    print $ Just 1 >>= \a -> Nothing >>= \b -> Just $ a * b
-- main = do
--     print $ do
--         a <- Just 1     -- 値がある
--         return $ a * 2  -- 処理される
--     print $ do
--         a <- Just 1     -- 値がある
--         b <- Nothing    -- 値がない
--         return $ a * b  -- 処理されない-- main = do
--     print $ do
--          a <- Just 1
--          b <- Just $ a * 2
--          return $ a * 2
--          -- a <- Just 1
--          -- b <- Nothing
--          -- return $ a * b
