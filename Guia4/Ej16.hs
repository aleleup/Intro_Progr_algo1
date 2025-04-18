-- a)
menorDivisor :: Integer -> Integer

menorDivisor n = buscaMenorDivisor n 1

buscaMenorDivisor :: Integer -> Integer -> Integer

buscaMenorDivisor n m |( mod n m == 0 )&&( m /= 1) = m
                      | m > n = n
                      | otherwise = buscaMenorDivisor n (m+1)


-- b)

esPrimo :: Integer -> Bool

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
-- nEsimoPrimo n | n == 1 = 2
--               | n == 0 
