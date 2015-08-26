f :: [Int] -> [Int]
f lst = map fst $ filter (\x->(snd x) `mod` 2 == 0) $ zip lst [1..]

main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
