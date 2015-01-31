main = do
    let a = return 1 :: Maybe Int
        b = Just 1
        c = 2
    print (a, b, c)
