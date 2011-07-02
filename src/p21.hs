properDivisors' i n | i > (n `div` 2)  = [] --base case
                    | (n `mod` i) == 0 = i : properDivisors' (i+1) n -- i evenly divides n
                    | otherwise = properDivisors' (i+1) n   -- otherwise     

properDivisors = properDivisors' 1
sumProper = sum . properDivisors

isAmicable n | sumn == n = False
             | otherwise = (n == sumn')
    where sumn  = sumProper n
          sumn' = sumProper sumn

-- | 'main' runs the main program
main :: IO ()
main = do
          putStrLn $ "is 220 amicable ? " ++ show(isAmicable(220))
          putStrLn $ "Result: " ++ show (sum (filter isAmicable [1..10000]))
