pertenece :: Eq t => t -> [t] -> Bool
pertenece e (x:xs) | xs == [] = x == e 
                   | e == x = True  
                   | otherwise = pertenece e xs


todosIguales :: Eq t => [t] -> Bool
todosIguales [] = True
todosIguales [_] = True
todosIguales (x:y:xs) = x == y &&  todosIguales xs


todosDistintos :: Eq t => [t] -> Bool
todosDistintos [] = True
todosDistintos [_] = True
todosDistintos (x:xs) = not (pertenece x xs) && todosDistintos xs


hayRepetidos :: Eq t => [t] -> Bool
hayRepetidos [] = False
hayRepetidos [_] = False
hayRepetidos (x:xs) = pertenece x xs || hayRepetidos xs



quitar  :: Eq t => t -> [t] ->Bool -> [t]
quitar t (x:xs) logicVar | xs == [] && x /= t = x : []
                | xs == [] && x == t = []
                | x == t && not logicVar = quitar t xs True
                | otherwise = x : quitar t xs logicVar

quitarTodos :: Eq t => t -> [t] -> [t]
quitarTodos t (x:xs) | xs == [] && x /= t = x : []
                     | xs == [] && x == t = []
                     | t == x = quitarTodos t (xs)
                     | otherwise = x : quitarTodos t xs


eliminarRepetidos :: Eq t => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) | xs == [] =  x: []
                         | otherwise =  x : eliminarRepetidos (quitarTodos (x) (x:xs)) 



mismosElementos :: Eq t => [t] -> [t] -> Bool

mismosElementos [] [] = True
mismosElementos (x:xs) (y:ys) | xs == [] = pertenece x (y:ys)
                              | otherwise = pertenece x (y:ys) && mismosElementos (xs) (y:ys)



--Ej 2.9
capicua :: Eq t => [t] -> Bool

capicua [] = True
capicua (x:xs)  | xs == [] = x == y
                | otherwise = x == y && capicua (sacarUltimo xs)
            where (y:ys) = reverse (x:xs)

