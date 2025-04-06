-- a) productoInterno: calcula el producto interno entre dos tuplas de R × R.
productoInterno :: (Float, Float) -> (Float, Float) -> Float 
productoInterno (a, b) (c,d) = a*c + b*d

-- -b) esParMenor: dadas dos tuplas de R × R, decide si cada coordenada de la primera tupla es menor a la coordenada correspondiente de la segunda tupla.
esParMenor  :: (Float, Float) -> (Float, Float) -> (Bool, Bool)
esParMenor (a, b) (c,d) = (a < c, b < d)

-- c) distancia: calcula la distancia eucl´ıdea entre dos puntos de R

distancia :: (Float, Float) -> (Float, Float) -> Float 
longitud :: (Float, Float) -> Float 
longitud (x, y) = (x**2 + y**2) ** (1/2)
distancia (a, b) (c,d) = longitud (c-a, d-b)
                        

--d) sumaTerna: dada una terna de enteros, calcula la suma de sus tres elementos.

sumaTerna :: (Float, Float, Float) -> Float
sumaTerna (a,b,c) = a+b+c

-- e) sumarSoloMultiplos: dada una terna de n´umeros enteros y un natural, calcula la suma de los elementos de la terna que son m´ultiplos del n´umero natural.
-- sumarSoloMultiplos :: (Int, Int, Int) -> Int -> Float
sumarSoloMultiplos (a,b,c) d | mod a d /= 0 = sumarSoloMultiplos(0, b , c) d
                             | mod b d /= 0 = sumarSoloMultiplos(a, 0, c) d
                             | mod c d /= 0 = sumarSoloMultiplos(a, b, 0) d
                             | otherwise = a + b + c


-- f) posPrimerPar: dada una terna de enteros, devuelve la posici´on del primer n´umero par si es que hay alguno, o devuelve 4 si son todos impares.
posPrimerPar :: (Int, Int, Int) -> Int 
posPrimerPar (a,b,c) | mod a 2 == 0 = 0
                     | mod b 2 == 0 = 1
                     | mod c 2 == 0 = 2
                     |otherwise = 4


-- g) crearPar :: a -> b -> (a, b): a partir de dos componentes, crea un par con esos valores. Debe funcionar para elementos de cualquier tipo.
crearPar :: ta -> tb -> (ta, tb)

crearPar a b = (a,b)


-- h) invertir :: (a, b) -> (b, a): invierte los elementos del par pasado como par´ametro. Debe funcionar para elementos
-- de cualquier tipo.
invertir :: (ta, tb) -> (tb, ta)
invertir (a, b) = (b, a)



-- i) i) Reescribir los ejercicios productoInterno, esParMenor y distancia usando el siguiente renombre de tipos:
-- type Punto2D = (Float, Float)

type Punto2D = (Float, Float)

productoInterno2 :: Punto2D -> Punto2D -> Float 
productoInterno2 (a, b) (c,d) = a*c + b*d


esParMenor2  :: Punto2Dd -> Punto2Dd -> (Bool, Bool)
esParMenor2 (a, b) (c,d) = (a < c, b < d)



distancia2 :: Punto2Dd -> Punto2Dd -> Float 
longitud2 :: Punto2Dd -> Float 
longitud2 (x, y) = (x**2 + y**2) ** (1/2)
distancia2 (a, b) (c,d) = longitud (c-a, d-b)