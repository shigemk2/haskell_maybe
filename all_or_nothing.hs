import Control.Applicative

fact 0 = Just 1
-- fact n | n > 0     = (n *) <$> fact (n - 1)
-- fact n | n > 0     = fact (n - 1) >>= \n' -> return (n * n')
-- fact n | n > 0     = fact (n - 1) >>= \n' -> return $ (n *) n'
-- fact n | n > 0     = fact (n - 1) >>= \n' -> (return . (n *)) n'
-- fact n | n > 0     = fact (n - 1) >>= return . (n *)
-- fact n | n > 0     = return . (n *) =<< fact (n - 1)
fact n | n > 0     = (n *) <$> fact (n - 1)
       | otherwise = Nothing

facts n = do
    a <- fact $ n
    b <- fact $ n - 1
    c <- fact $ n - 2
    return (a, b, c)

main = do
    print $ facts 3
    print $ facts 2
    print $ facts 1  -- cで失敗
    print $ facts 0  -- bで失敗
