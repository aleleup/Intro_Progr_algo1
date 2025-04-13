iesimoDigito :: Integer -> Integer -> Integer
calcularDigitosN :: Integer -> Integer -> Integer

calcularDigitosN n acc | n <= 9 = acc
                       | n > 9 && division == 0 = acc
                       | otherwise = calcularDigitosN n (acc + 1)
            where division = div n (10 ^ acc)


iesimoDigito n i | i > digitosN || i < 1 = 0  
                 | otherwise = mod (div n (10 ^ (digitosN - i))) 10

            where digitosN = calcularDigitosN n 0