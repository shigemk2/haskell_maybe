import Control.Applicative

fact 0 = Just 1
fact n | n > 0     = (n *) <$> fact (n - 1)
       | otherwise = Nothing

main = do
    print $ fact (-1)
    print $ fact 5
