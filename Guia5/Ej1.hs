-- 1. longitud :: [t] -> Integer
--a)
longitud :: [t] -> Integer
longitud [] = 0
longitud (_:xs) = 1 + longitud xs




--b) ultimo

ultimo:: Eq t => [t] -> t
-- ultimo [] = 0
ultimo (x:xs) | xs == [] = x
              | otherwise = ultimo xs


principio :: [t] -> [t]

principio (x:xs) | longitud (x:xs) == 2 = [x]
                 | otherwise = x : principio xs




reverso :: Eq t => [t] -> [t]

reverso (x:xs) | xs == [] = [x]
               | otherwise = ultimo (x:xs) : reverso (sacarUltimo (x:xs))


-- sacarUltimo :: Eq a => [a] -> [a]
sacarUltimo (x:xs) | x == ultimo (x:xs) = []
                   | otherwise = x : sacarUltimo xs




