-- sumaAcumulada :: Num t => [t] -> [t]
--a)
sumaAcumulada (x:xs) = acumularSuma (x:xs) 0

acumularSuma ::   [Int] -> Int -> [Int]
acumularSuma (x:xs) acc | xs == [] = (x+acc) : []
                        | otherwise = (x+acc) : acumularSuma xs (x + acc)



--b



menorDivisor :: Integer -> Integer
menorDivisor n = buscaMenorDivisor n 1
buscaMenorDivisor :: Integer -> Integer -> Integer
buscaMenorDivisor n m |( mod n m == 0 )&&( m /= 1) = m
                      | m > n = n
                      | otherwise = buscaMenorDivisor n (m+1)
esPrimo :: Integer -> Bool
esPrimo 1 = False
esPrimo n = menorDivisor n == n 

nEsimoPrimo n | n == 1 = 2
              | otherwise = siguientePrimo (nEsimoPrimo(n-1))
siguientePrimo n | esPrimo (n+1) = n + 1
                 |  otherwise = siguientePrimo (n+1)


descomponerEnPrimos :: [Integer] -> [Integer]
descomponerEnPrimos (x : xs) | xs == [] = descomposicionDe (x) : []
                             | otherwise =( descomposicionDe x) : (descomponerEnPrimos xs)


descomposicionDe :: Integer -> [Integer]
descomposicionDe n  | esPrimo n = n : []
                    | otherwise = verificarMultiploDePrimos n 2 1

verificarMultiploDePrimos:: Integer -> Integer -> Integer -> [Integer]
verificarMultiploDePrimos n pAcc mAcc  | ((nEsimoPrimo pAcc) * (nEsimoPrimo mAcc)) == n = (nEsimoPrimo mAcc) :(nEsimoPrimo pAcc) : []
                                        | ((nEsimoPrimo pAcc) *  (nEsimoPrimo mAcc)) > n = verificarMultiploDePrimos n (pAcc + 1) 1
                                        | otherwise = verificarMultiploDePrimos n pAcc (mAcc + 1)
                    




