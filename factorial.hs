import Control.Applicative

fact 0 = Just 1
-- fact n | n > 0     = (n *) <$> fact (n - 1)
-- fact n | n > 0     = do
--                      n' <- fact (n - 1)
--                      return $ n * n'
-- fact n | n > 0     = fact (n - 1) >>= \n' -> return $ n * n'
-- f(g(x)) -> f $ g x -> (f . g) x
-- fact n | n > 0     = fact (n - 1) >>= \n' -> (return . (n *)) n'
-- fact n | n > 0     = fact (n - 1) >>= return . (n *)
fact n | n > 0     = (n *) <$> fact (n - 1)
       | otherwise = Nothing

main = do
    print $ fact (-1)
    print $ fact 5
