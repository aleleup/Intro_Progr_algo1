sumaPotencias :: Integer -> Integer -> Integer -> Integer

sumaPotencias q n m | m == 1 || n == 1 = q ^ (n + m)
                    | otherwise = q ^ (n + m) + sumaPotencias q (n-1) (m-1)