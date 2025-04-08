type Anio = Integer
type EsBisiesto = Bool

bisiesto :: Anio -> EsBisiesto

bisiesto a | (mod a 4 /= 0 ) || (mod a 100 == 0 && mod a 400 /= 0) = False
           | otherwise = True