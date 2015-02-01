import Control.Applicative

mapMaybe' f = foldr (\x xs -> case f x of
    Just x' -> x':xs
    Nothing ->    xs) []

fact 0 = Just 1
fact n | n > 0     = (n *) <$> fact (n - 1)
       | otherwise = Nothing

facts n = ( map      fact [n, n - 1, n - 2]
          , mapMaybe' fact [n, n - 1, n - 2]
          )

main = do
    print $ facts 3
    print $ facts 2
    print $ facts 1  -- cで失敗
    print $ facts 0  -- bで失敗
