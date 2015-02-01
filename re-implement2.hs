import Control.Applicative
import Data.Maybe

fact 0 = Just 1
fact n | n > 0     = (n *) <$> fact (n - 1)
       | otherwise = Nothing

mapMaybe' _ [] = []
mapMaybe' f (x:xs) = do
    let a = f x
        (Just a') = a
    a' : mapMaybe' f xs

main = do
    print $ map fact [3,2,1]
    -- let a = fact 3
    --     (Just a') = a
    -- print a'
    print $ mapMaybe' fact [3,2,1]
