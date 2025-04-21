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
                      | otherwise =  sumarN x (xs)