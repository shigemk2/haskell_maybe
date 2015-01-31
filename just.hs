main = do
    let a = return 1 :: Maybe Int
        b = Just 1
    print (a, b)
