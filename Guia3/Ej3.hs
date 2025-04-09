estanRelacionados :: Integer -> Integer -> Bool
estanRelacionados a b | (a /= 0 && b /= 0) && (a * a + a * b * k == 0)  = True
                      | otherwise = False
                       where k =  div (-a) b 