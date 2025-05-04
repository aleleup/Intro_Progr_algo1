--9
divisoresPropios :: Int -> [Int]
divisoresPropios n = divisoresPropiosAux n 1

divisoresPropiosAux :: Int -> Int -> [Int]
divisoresPropiosAux n i | n == i = []
                        | mod n i == 0 = i : divisoresPropiosAux n (i+1)
                        | otherwise = divisoresPropiosAux n (i+1)

--10

sonAmigos :: Int -> Int -> Bool
sonAmigos n m = sumatoria (divisoresPropios n) == m && sumatoria(divisoresPropios m) == n


sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs




--11

primerosNPerfectos :: Int -> [Int]
primerosNPerfectos n  = primerosNPerfectosDeMenorAMayor n 1 []


primerosNPerfectosDeMenorAMayor :: Int -> Int -> [Int] -> [Int]
primerosNPerfectosDeMenorAMayor n i store  | n == i = (store++[b])
                                            | otherwise = primerosNPerfectosDeMenorAMayor n (i+1) (store++[b])
                                    where b = buscarNPerfectoAPartirDe (ultimo store + 1)

ultimo :: [Int] -> Int
ultimo [] = 0 --
ultimo (x:xs)   | xs == [] = x
                | otherwise = ultimo xs


buscarNPerfectoAPartirDe :: Int -> Int
buscarNPerfectoAPartirDe n  | n == sumatoria(divisoresPropios n) = n
                            | otherwise = buscarNPerfectoAPartirDe (n+1)


--12)

listaDeAmigos :: [Int] -> [(Int, Int)]
listaDeAmigos [] = []
listaDeAmigos (x:xs) = amigos : listaDeAmigos (quitar (fst amigos) (quitar (snd amigos) xs))
                where amigos = buscoAmigos x xs

buscoAmigos :: Int -> [Int] -> (Int, Int)

buscoAmigos n (x:xs) | sonAmigos n x = (n, x)
                     | otherwise = buscoAmigos n xs
quitar :: Int-> [Int] -> [Int]
quitar _ [] = []
quitar n (x:xs) | x == n = xs   
                | otherwise = x : quitar n xs



-- [2924, 284, 76084, 14595, 1210, 220, 5020, 6368, 12285, 2620,1184, 17296, 66992, 10744, 6232, 66928, 10856, 18416, 63020, 5564]