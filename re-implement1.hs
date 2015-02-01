-- returnにMaybeモナドの型注釈をつけるとJustと同じ
-- b x = return $ x

a `bind` b = do
    a' <- a
    b a'

main = do
    print $ Just 1 `bind` \a -> Just $ a * 2
    print $ Just 1 `bind` \a -> Nothing `bind` \b -> Just $ a * b
    print $ Just 1 `bind` Just
