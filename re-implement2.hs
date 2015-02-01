import Control.Applicative
import Data.Maybe

fact 0 = Just 1
fact n | n > 0     = (n *) <$> fact (n - 1)
       | otherwise = Nothing

facts n = ( map      fact [n, n - 1, n - 2]
          , mapMaybe' fact [n, n - 1, n - 2]
          )

mapMaybe' _ [] = []
mapMaybe' f (x:xs) = do
    let a = f x
        (Just a') = a
    a' : mapMaybe' f xs

main = do
    print $ facts 3
    print $ facts 2
    print $ facts 1  -- cで失敗
    print $ facts 0  -- bで失敗
    print $ map fact [3,2,1]
    print $ mapMaybe' fact [3,2,1]
