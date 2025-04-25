-- a)
menorDivisor :: Integer -> Integer

menorDivisor n = buscaMenorDivisor n 1

buscaMenorDivisor :: Integer -> Integer -> Integer

buscaMenorDivisor n m |( mod n m == 0 )&&( m /= 1) = m
                      | m > n = n
                      | otherwise = buscaMenorDivisor n (m+1)


-- b)
esPrimo :: Integer -> Bool
esPrimo 1 = False
esPrimo n = menorDivisor n == n 

-- c)
sonCoprimos :: Integer -> Integer -> Integer
sonCoprimos n m | n >= m = buscaDivisorComun n m (m - 1)
                | otherwise = buscaDivisorComun n m (n -1)


buscaDivisorComun :: Integer -> Integer -> Integer -> Integer

buscaDivisorComun n m k | k == 1 = 0
                        | mod n k == 0 && mod m k == 0 = k
                        | otherwise = buscaDivisorComun n m (k - 1) 

--d) n-esimo primo
-- PREGUNTAR
-- nEsimoPrimo :: Integer -> Integer


-- nEsimoPrimo :: Integer -> Integer
-- nEsimoPrimo n | n == 1 = 2
--               | otherwise = contarPrimos 0 n 2

-- contarPrimos :: Integer -> Integer -> Integer

-- contarPrimos desde hasta acc | desde == hasta = acc 
--                              | acc /= hasta = contarPrimos 

nEsimoPrimo n | n == 1 = 2
              | otherwise = siguientePrimo (nEsimoPrimo(n-1))


siguientePrimo n | esPrimo (n+1) = n + 1
                 |  otherwise = siguientePrimo (n+1)



esSumaInicialDePrimos :: Integer -> Bool
esSumaInicialDePrimos 0 = False
esSumaInicialDePrimos n = probarSumaDesde n 1

probarSumaDesde :: Integer -> Integer -> Bool

probarSumaDesde sumaRestante i  | sumaRestante == 0 = True
                                | sumaRestante < 0 = False
                                | otherwise = probarSumaDesde (sumaRestante - (nEsimoPrimo i)) (i+1)
