import Control.Applicative
import Control.Monad

check x = do
    do                  -- 分岐点
        guard $ x == 1  -- 分岐1
        <|> do
        guard $ x == 3  -- 分岐2
    Just x              -- 合流

main = do
    forM_ [1..5] $ \x -> print $ check x
