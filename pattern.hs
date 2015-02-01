main = do              -- IOモナドを扱うdo（対象外）
    let a = Just 1
        (Just a') = a  -- パターンマッチ
    print a'
