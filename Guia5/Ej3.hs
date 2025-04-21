sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

--

productoria :: [Integer] -> Integer
productoria [] = 1
productoria (x:xs) = x * productoria xs

--

maximo :: [Integer] -> Integer
maximo (x:y:xs) | xs == [] = mayor x y
                | x >= y = mayor x (maximo (y:xs))
                | otherwise = mayor y (maximo (y:xs))

mayor :: Integer -> Integer -> Integer
mayor x y | x >= y = x
        | otherwise = y



--

sumarN :: Integer -> [Integer] -> [Integer]
sumarN _ [] = []
sumarN n (x:xs) = (n + x) : sumarN n xs


-- sumarN2:: [Integer] -> Integer
-- sumarN2 n (x:xs) | xs == [] = (n+x): []
--                  | otherwise = (n + x ) : sumarN2 n xs 


sumarElPrimero :: [Integer] -> [Integer]

sumarElPrimero (x:xs) | xs == [] = []
                      | otherwise =  sumarN x (x:xs)
--

sumarElUltimo (x:xs) | xs == [] = []
                     | otherwise = sumarN (ultimo (x:xs)) (x:xs)
--del ej1
ultimo:: Eq t => [t] -> t
ultimo (x:xs) | xs == [] = x
              | otherwise = ultimo xs
--


pares :: [Integer] -> [Integer]
pares [] = []
pares (x:xs) | mod x 2 == 0 = x: pares xs       
             | otherwise = pares xs

--



multiplosDeN :: Integer -> [Integer] -> [Integer]

multiplosDeN _ [] = []
multiplosDeN n (x:xs) | mod x n == 0 = x : multiplosDeN n xs
                      | otherwise = multiplosDeN n xs


--


ordenar :: [Integer] -> [Integer]

ordenar (x:xs) | xs == [] = x : []
                | otherwise = minimo (x:xs) : ordenar  (quitar (minimo (x:xs)) (x:xs) (False))



quitar  :: Eq t => t -> [t] ->Bool -> [t]
quitar t (x:xs) logic | xs == [] && x /= t = x : []
                | xs == [] && x == t = []
                | x == t && not logic = quitar t xs True
                | otherwise = x : quitar t xs logic

minimo :: [Integer] -> Integer
minimo (x:y:xs)    | xs == [] = menor x y
                   | x <= y = menor x (minimo (y:xs))
                   | otherwise = menor y (minimo (y:xs))

menor :: Integer -> Integer -> Integer
menor x y | x <= y = x
        | otherwise = y
