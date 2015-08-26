hello_worlds :: Int -> IO ()
hello_worlds n = if n == 0 then return ()
                 else do
                   putStrLn "Hello World"
                   hello_worlds (n - 1)

main = do
   n <- readLn :: IO Int
   hello_worlds n
