f :: Int -> [Int] -> [Int]
f n arr = foldl (++) [] $ map (\x->take n $ repeat x) arr

main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
