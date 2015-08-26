f arr = sum [x | x <- arr, x `mod` 2 /= 0]

main = do
   inputdata <- getContents
   putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata
