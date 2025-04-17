f1 :: Integer -> Integer

f1 n | n == 0 = 1
     | otherwise = (2 ^ n) + f1(n-1) 



f2 :: Integer -> Float -> Float

f2 n q | n == 1 = q
       | otherwise = (q ^ n) + f2 (n-1) q



f3 :: Integer -> Float -> Float

f3 n q | n == 0 = 0
       | m == 2 = q ^ 2 + q
       | otherwise = q ^ m + q ^ (m-1) + f3 (n-1) q
       where m = 2 * n


-- f4 :: Int -> Int -> Float -> Float 
f4 n q | m == 1 = q ^ m
       | otherwise = (q ^ (2 * n)) + (q ^ m) + f4 (n-1)  q

              where m = n + n-1


