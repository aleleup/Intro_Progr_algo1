f :: Integer -> Integer -> Integer

f n m | n == 0 = 0 
      | otherwise = sumaMismaBaseDistintoExponente n m + f (n-1) m



sumaMismaBaseDistintoExponente :: Integer -> Integer -> Integer

sumaMismaBaseDistintoExponente n m | m == 1 = n
                                   | n == 1 = m
                                   | otherwise = n ^ m + sumaMismaBaseDistintoExponente n (m - 1)