solve :: Double -> Double
solve x = 1 + sum [(x ** y) / (product [1..y]) | y <- [1..9]]

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
