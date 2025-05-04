type Fila = [Int]
type Tablero = [Fila]
type Posicion = (Int, Int)
type Camino = [Posicion]
type Apariciones = (Int, Int) --(Valor, Apariciones)
type TablaIndexada = [(Int, Fila)] --Ej7
--5)
maximo :: Tablero -> Int
maximo tablero = maximoAux tablero 0

maximoAux :: Tablero -> Int -> Int
maximoAux [] acc = acc
maximoAux (x:xs) acc | maxX >= acc = maximoAux xs maxX
                     | otherwise = maximoAux xs acc
                where maxX = maxPosicionFila x 0


maxPosicionFila :: Fila -> Int -> Int
maxPosicionFila [] acc = acc
maxPosicionFila (x:xs) acc  | x >= acc = maxPosicionFila xs x
                            | otherwise = maxPosicionFila xs acc



--6)

masRepetido :: Tablero -> Int
masRepetido tablero = masRepetidoAux tablero tablero (0,0)

masRepetidoAux :: Tablero -> Tablero -> (Int, Int) -> Int
masRepetidoAux [] _ (valor, apariciones) = valor
masRepetidoAux (f:fs) tablero acc   | (snd maxScannFila) >= (snd acc) = masRepetidoAux fs tablero maxScannFila
                                    | otherwise = masRepetidoAux tablero fs acc
                        where maxScannFila = scannMaxValDeFila f tablero (0,0)
scannMaxValDeFila :: Fila -> Tablero -> (Int, Int) -> (Int, Int)
scannMaxValDeFila [] _ acc = acc
scannMaxValDeFila (x:xs) tablero acc | snd scannActual >= snd acc = scannMaxValDeFila xs tablero scannActual
                                     | otherwise = scannMaxValDeFila xs tablero acc
            where scannActual = (scann tablero x 0)

scann :: Tablero -> Int -> Int -> (Int,Int)

scann [] valorDeseado aparicionesPorFila = (valorDeseado, aparicionesPorFila)
scann (f:fs) valor aparicionesPorFila = scann fs valor (calcularAparicionesPorFila f valor  aparicionesPorFila)

calcularAparicionesPorFila :: Fila -> Int -> Int -> Int
calcularAparicionesPorFila [] valor apariciones = apariciones
calcularAparicionesPorFila (x:xs) valor apariciones | x == valor = 1 + calcularAparicionesPorFila xs valor apariciones
                                                    | otherwise = calcularAparicionesPorFila xs valor apariciones





--7)


valoresDeCamino :: Tablero -> Camino -> [Int]
valoresDeCamino tablero (p:ps)    | ps == [] = [encontrarElemento p listaIndexada]
                                | otherwise = encontrarElemento p listaIndexada : valoresDeCamino tablero ps
                            where listaIndexada = transformListaDeListaATuplaDeLista tablero 1
encontrarElemento :: Posicion ->  TablaIndexada -> Int
encontrarElemento (fila, columna) (f:fs) | fila == fst f = buscarColumna columna (snd f) 1
                                         | otherwise = encontrarElemento (fila,columna) fs 

buscarColumna :: Int -> Fila -> Int -> Int
buscarColumna columna (x:xs) acc | acc == columna = x
                                 | otherwise = buscarColumna columna xs (acc+1)

transformListaDeListaATuplaDeLista :: Tablero -> Int -> TablaIndexada
transformListaDeListaATuplaDeLista (l:ls) acc   | ls == [] = [(acc, l)]
                                                | otherwise = (acc, l) : transformListaDeListaATuplaDeLista ls (acc+1)


--8) 

esCaminoFibo :: [Int] ->Int ->Bool
esCaminoFibo camino i = esCaminoFiboAux camino camino i  

esCaminoFiboAux :: [Int] -> [Int] -> Int -> Bool
esCaminoFiboAux (c:cs) listaDeValidacion i  | cs == [] = pertenece (fibo i) listaDeValidacion
                                            | otherwise = pertenece (fibo i) listaDeValidacion && esCaminoFiboAux cs listaDeValidacion (i+1)

pertenece :: Eq t => t -> [t] -> Bool

pertenece _ [] = False
pertenece n (x:xs)  | x == n = True
                    | otherwise = pertenece n xs


fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo i = fibo (i-1) + fibo (i-2)





