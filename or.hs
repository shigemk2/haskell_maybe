import Debug.Trace

isA ch = trace (show ch) $ ch == 'A'

main = do
    traceIO $ show $ isA 'A' || isA 'B'  -- 左のみ
    traceIO "---"
    traceIO $ show $ isA 'A' || isA 'A'  -- 左のみ
    traceIO "---"
    traceIO $ show $ isA 'B' || isA 'A'  -- 左→右
    traceIO "---"
    traceIO $ show $ isA 'B' || isA 'C'  -- 左→右
