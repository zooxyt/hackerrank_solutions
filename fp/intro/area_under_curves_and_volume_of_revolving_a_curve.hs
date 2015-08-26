import Text.Printf (printf)

solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = let
  i2d x = (fromIntegral :: Int -> Double) x
  interval = 0.001
  x_mids = [i2d l, i2d l + interval .. i2d r]
  heights = map (\x ->
                  sum (zipWith
                       (\x1 x2 ->
                         (i2d x1) * (x ** (i2d x2))) a b)) x_mids
  areas = map (\x -> pi * x * x) heights
  width = interval
  in
   [sum $ map (\x->x * width) heights,
    sum $ map (\x->x * width) areas]


main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines

