-- estanRelacionados :: Integer -> Float -> Bool
-- divisionNegativa :: Integer -> Integer -> Integer
divisionNegativa a b = -a / b 
estanRelacionados a b | (a /= 0 && b /= 0) && (k - 0.1) == 0 = True
                      | otherwise = False
                       where k =  -a / b 