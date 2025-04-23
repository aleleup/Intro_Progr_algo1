--a)
sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []

sacarBlancosRepetidos (x:y:xs)  | xs == [] && dobleEspacios = y : []
                                | xs == [] && not dobleEspacios = x: y : []
                                | dobleEspacios = sacarBlancosRepetidos (x:xs)
                                | otherwise = x : sacarBlancosRepetidos (y:xs)
                        where dobleEspacios = (x == y) && (y == ' ')
 

--b)
contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras (x:xs)   | xs == [] = 1
                        | x == ' ' = 1 + contarPalabras (sacarBlancosRepetidos (xs))
                        | otherwise = contarPalabras ( sacarBlancosRepetidos(xs))

--c)
palabras :: [Char] -> [[Char]]

palabras (x:xs)  =  construirPalabras (x:xs) ([])

construirPalabras :: [Char] -> [Char] -> [[Char]]
construirPalabras (x:xs) construccion   | xs == [] = reverse (x : construccion): [] : []
                                        | x == ' ' = reverse (construccion): [] : construirPalabras (xs) []  
                                        | otherwise = construirPalabras (xs) (x : construccion)


--d)
Preguntar




