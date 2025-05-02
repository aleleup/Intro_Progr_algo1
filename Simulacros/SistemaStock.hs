-- type String = [Char]

generarStock :: [String] -> [(String, Int)]
generarStock [] = []
-- generarStock [_] = [(_,1)]
generarStock mercaderia = generarStockAux mercaderia mercaderia

generarStockAux :: [String] -> [String] -> [(String, Int)]
generarStockAux (x:xs) originalList | xs == [] = [checkMercaderia x originalList 0]
                                    | otherwise = (checkMercaderia x  originalList 0) : (generarStockAux xs originalList)

checkMercaderia :: String -> [String] -> Int -> (String, Int) 
checkMercaderia producto (l:ls) acc | ls == [] && producto == l =  (producto, acc + 1) 
                                    | ls == [] && producto /= l =  (producto, acc) 
                                    | producto == l = checkMercaderia producto ls (acc+1)
                                    | otherwise = checkMercaderia producto ls acc
-- 1. Lista vacía
l1 = [] 
-- Resultado esperado: []

-- 2. Un solo producto
l2 = ["pan"]
-- Resultado esperado: [("pan", 1)]

-- 3. Todos productos distintos
l3 = ["pan", "leche", "huevos"]
-- Resultado esperado (orden puede variar): [("pan",1), ("leche",1), ("huevos",1)]

-- 4. Algunos productos repetidos
l4 = ["pan", "leche", "pan", "huevos", "leche"]
-- Resultado esperado: [("pan",2), ("leche",2), ("huevos",1)]

-- 5. Todos los productos iguales
l5 = ["arroz", "arroz", "arroz", "arroz"]
-- Resultado esperado: [("arroz", 4)]

-- 6. Con strings vacíos
l6 = ["", "pan", "", "pan"]
-- Resultado esperado: [("",2), ("pan",2)]

-- 7. Productos con diferencias por mayúsculas (case sensitive)
l7 = ["Pan", "pan", "PAN"]
-- Resultado esperado: [("Pan",1), ("pan",1), ("PAN",1)]




--2) 
stockDeProducto :: [(String, Integer)] -> String -> Integer

stockDeProducto [] _ = 0 
-- stockDeProducto [_] _ = 1

stockDeProducto (x:xs) producto | xs == [] && devolverProducto x /= producto = 0
                              |  xs == [] && devolverProducto x == producto = devolverStock x
                              | devolverProducto x == producto = devolverStock x
                              | otherwise = stockDeProducto xs producto


devolverStock :: (String, Integer) -> Integer
devolverStock (_, stock) = stock

devolverProducto :: (String, Integer) -> String
devolverProducto (producto, _) = producto


-- 1. Producto que está presente
m1 = [("pan", 4), ("leche", 2), ("huevos", 6)]
-- Esperado: 4

-- 2. Producto al final de la lista
m2 = [("pan", 4), ("leche", 2), ("huevos", 6)] 
-- Esperado: 6

-- 3. Producto que no está en la lista
m3 = [("pan", 4), ("leche", 2), ("huevos", 6)] 
-- Esperado: 0

-- 4. Lista vacía
m4 = [] 
-- Esperado: 0

-- 5. Un solo elemento (coincide)
m5 = [("arroz", 10)]
-- Esperado: 10

-- 6. Un solo elemento (no coincide)
m6 = [("arroz", 10)] 
-- Esperado: 0

-- 7. Producto con mayúsculas distintas (case sensitive)
m7 = [("Pan", 3), ("pan", 5)] 
-- Esperado: 3

m8 = [("Pan", 3), ("pan", 5)] 
-- Esperado: 5

-- 8. Productos con strings vacíos
m9 = [("", 7), ("leche", 1)] 
-- Esperado: 7

m10 = [("", 7), ("leche", 1)] 
-- Esperado: 1


dineroEnStock :: [(String, Integer)] ->[(String, Float)] -> Float
dineroEnStock [] [] = 0
dineroEnStock (stock:listaStock) (precio:listaPrecios)  | listaStock == [] = checkDinero stock (precio:listaPrecios)
                                                        | otherwise = checkDinero stock (precio:listaPrecios) + dineroEnStock listaStock (precio:listaPrecios)
checkDinero :: (String, Integer) -> [(String, Float)] -> Float
checkDinero _ [] = 0
checkDinero (producto, stock) (precio:listaPrecios) | valorDeseado /= 0 = valorDeseado
                                                    | otherwise = checkDinero (producto, stock) listaPrecios
                                                where valorDeseado = precioPorStock (producto, stock) precio
precioPorStock :: (String, Integer) -> (String, Float) -> Float
precioPorStock (producto, stock) (productoDePrecio, precio) | producto == productoDePrecio = fromIntegral (stock) * precio
                                                            | otherwise = 0

--Valores Haskell es boludo y entiende a los Float literales como "Dobles"
-- stock1 = [("pan", 3), ("leche", 2), ("huevos", 5)]
-- precios1 = [("pan", 1), ("leche", 150.1), ("huevos", 20.2)]


-- stock2 = [("arroz", 10)]
-- precios2 = [("arroz", 80.0)]


-- stock3 = [("jugo", 4), ("galletitas", 6), ("yogur", 3)]
-- precios3 = [("jugo", 75.5), ("galletitas", 40.75), ("yogur", 60.25)]





--4)

aplicarOferta :: [(String, Integer)] ->[(String, Float)] ->[(String,Float)]


aplicarOferta [] [] = []
aplicarOferta (stock:listaStock) (precio:listaPrecios)  | listaStock == [] = [checkStock stock (precio:listaPrecios)]
                                                        | otherwise = checkStock stock (precio:listaPrecios) : aplicarOferta listaStock (precio:listaPrecios)


checkStock :: (String, Integer) ->[(String, Float)] -> (String,Float)
-- checkStock _ [] = []
checkStock (producto, stock) (precio:listaPrecios)  | producto == fst precio && stock >= 10 = (fst precio, snd precio * 0.8)
                                                    | producto == fst precio = precio   
                                                    | otherwise = checkStock (producto, stock) listaPrecios