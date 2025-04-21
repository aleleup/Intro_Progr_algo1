sumaPotencias :: Integer -> Integer -> Integer -> Integer

sumaPotencias q n m | m == 1 = sumaPotenciaDeN q n 1
                    | otherwise = (sumaPotenciaDeN q n m )+ (sumaPotencias q n (m - 1))


sumaPotenciaDeN q n m | n == 1 = q ^ (m + 1)
                      | otherwise = (q ^ (m + n) )+ sumaPotenciaDeN q (n-1) m