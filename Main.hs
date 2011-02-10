--
-- 2011 Leonardo Sandoval 
--

foo = "foo"

-- | 'main' runs the main program
main :: IO ()
main = do
          putStrLn $ "Result :" ++ show foo
