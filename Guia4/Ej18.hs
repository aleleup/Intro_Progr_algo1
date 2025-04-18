{--
EJERCICIO 7
--}
iesimoDigito :: Integer -> Integer -> Integer
calcularDigitosN :: Integer -> Integer -> Integer

calcularDigitosN n acc | n <= 9 = acc
                       | n > 9 && division == 0 = acc
                       | otherwise = calcularDigitosN n (acc + 1)
            where division = div n (10 ^ acc)


iesimoDigito n i | i > digitosN || i < 1 = 0  
                 | otherwise = mod (div n (10 ^ (digitosN - i))) 10

            where digitosN = calcularDigitosN n 0




mayorDigitoPar :: Integer -> Integer

mayorDigitoPar n | n <= 9 && mod n 2 == 0 = n
                 | n <= 9 && mod n 2 /= 0 = (-1)
                 | mod (primerDigito n) 2 == 0 = primerDigito n
                 | otherwise = mayorDigitoPar (sacarPrimerDigito n)  


primerDigito :: Integer -> Integer
primerDigito n = iesimoDigito n 1

sacarPrimerDigito:: Integer -> Integer
sacarPrimerDigito n = mod n (10 ^ ((calcularDigitosN n 0) - 1))