main = do
    let a = Just 1
        b = Just 2
        (Just a') = a  -- OK
        (Just b') = Nothing  -- 実行時エラー Irrefutable pattern failed for pattern (Data.Maybe.Just b')
    print [a', b']
