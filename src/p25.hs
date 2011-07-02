p25 n = snd $ until end fib ((0,1),1)
	where 
        fib ((a,b),i) = ((b,a+b),i+1)
        numDigits = length . show . snd . fst
        end t = (n == numDigits t)


main :: IO ()
main = do
          putStrLn $ "Result: " ++ show (p25 1000)
