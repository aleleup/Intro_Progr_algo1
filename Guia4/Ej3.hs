esDivisible :: Integer -> Integer -> Bool
buscarMultiploEntero :: Integer ->Integer -> Integer -> Bool
buscarMultiploEntero a b k | (a < b*k) = False
                           | a == b * k  = True
                           | otherwise = buscarMultiploEntero a b (k+1)


esDivisible a b | b == 0 = False
                | otherwise = buscarMultiploEntero a b 0 