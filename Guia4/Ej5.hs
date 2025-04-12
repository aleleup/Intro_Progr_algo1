medioFactorial :: Integer -> Integer

medioFactorial n | n <= 1 = 1
                 | otherwise = n * medioFactorial (n-2)