-- returnにMaybeモナドの型注釈をつけるとJustと同じ
-- b x = return $ x

(Just a) `bind` f = f a
Nothing `bind` _ = Nothing

-- a `bind` b =
--     let (Just a') = a
--     in b a'

main = do
    print $ Just 1 `bind` \a -> Just $ a * 2
    print $ Just 1 `bind` \a -> Nothing `bind` \b -> Just $ a * b
