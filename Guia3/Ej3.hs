-- estanRelacionados :: Integer -> Float -> Bool
-- divisionNegativa :: Integer -> Integer -> Integer
divisionNegativa a b = -a / b 
estanRelacionados a b | (a /= 0 && b /= 0) && (a * a + a * b * k) == 0 = True
                      | otherwise = False
                       where k =  truncate(-a / b) 