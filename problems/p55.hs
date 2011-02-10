-- http://projecteuler.net/index.php?section=problems&id=55

isLychrel' iter maxIter n | iter > maxIter = True
                          | isPalindronic (sum') = False -- number is palindromic
                          | otherwise = isLychrel' (iter+1) maxIter sum'
  where sum' = n + rev(n)
        rev a = (read . reverse . show) a :: Integer
        isPalindronic a = a == rev a

p55 = isLychrel' 0 50

main :: IO ()
main = do
          putStrLn $ "47 is lychrel number? " ++ show (p55 47)
          putStrLn $ "Result: " ++ show (length (filter p55 [1..10000]))
