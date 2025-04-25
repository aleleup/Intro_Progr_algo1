type Texto = [Char]



--a)
sacarBlancosRepetidos :: Texto -> Texto

sacarBlancosRepetidos [] = []

sacarBlancosRepetidos (x:y:xs)  | xs == [] && dobleEspacios = y : []
                                | xs == [] && not dobleEspacios = x: y : []
                                | dobleEspacios = sacarBlancosRepetidos (x:xs)
                                | otherwise = x : sacarBlancosRepetidos (y:xs)
                        where dobleEspacios = (x == y) && (y == ' ')
 

--b)
contarPalabras :: Texto -> Integer
contarPalabras [] = 0
contarPalabras (x:xs)   | xs == [] = 1
                        | x == ' ' = 1 + contarPalabras (sacarBlancosRepetidos  xs)
                        | otherwise = contarPalabras ( sacarBlancosRepetidos xs)
contarPalabrasFunciona :: Texto -> Integer
contarPalabrasFunciona [] = 0
contarPalabrasFunciona (x:xs)   | xs == [] = 1
                        | x == ' ' = 1 + contarPalabrasFunciona xs
                        | otherwise = contarPalabrasFunciona xs

--c)
palabras :: Texto -> [Texto]

palabras (x:xs)  =  construirPalabras (x:xs) []

construirPalabras :: Texto -> Texto -> [Texto]
construirPalabras (x:xs) construccion   | xs == [] = reverse (x : construccion): [] : []
                                        | x == ' ' = reverse (construccion): [] : construirPalabras xs []  
                                        | otherwise = construirPalabras (xs) (x : construccion)


--d)
-- Preguntar
palabraMasLarga :: Texto -> Texto
palabraMasLarga listaChar = verificarPalabraMasLarga (letrasPorPalabra listaChar 0) (palabras listaChar) (0, [])

letrasPorPalabra :: Texto -> Int -> [Int]
letrasPorPalabra (c:cs) acc     | cs == [] && c /= ' ' = [1+acc]
                                | c == ' ' = acc : letrasPorPalabra cs 0
                                | otherwise = letrasPorPalabra cs (acc+1)


verificarPalabraMasLarga :: [Int] -> [Texto] -> (Int, Texto)  -> Texto
verificarPalabraMasLarga (n:ns) (c:cs) (prevN, prevChar) | ns == [] && prevN >= n  = prevChar
                                                         | ns == [] && n > prevN = c
                                                         | c == [] = verificarPalabraMasLarga (n:ns) cs (prevN, prevChar)
                                                         | n >= prevN = verificarPalabraMasLarga ns cs (n, c)
                                                         | otherwise = verificarPalabraMasLarga ns cs (prevN, prevChar)



--e


aplanar :: [Texto] -> Texto

aplanar (c:cs)  | cs == [] = c
                | otherwise = concat [c, (aplanar cs)]

--d      
aplanarConBlancos :: [Texto] -> Texto

aplanarConBlancos (c:cs)| cs == [] = c
                        | otherwise = concat [c, [' '],  (aplanar cs)]



aplanarConNBlancos :: [Texto]-> Int -> Texto
aplanarConNBlancos (c:cs) n  | cs == [] = c
                             | otherwise = concat [c, (nBlancos n),  (aplanar cs)]


nBlancos :: Int -> Texto
nBlancos n | n == 0 = []
           | otherwise = ' ' : nBlancos (n-1)
