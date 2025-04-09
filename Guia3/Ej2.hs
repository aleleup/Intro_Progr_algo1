--1) a) Implementar la funci´on parcial f :: Integer -> Integer definida por extensi´on de la siguiente manera:
-- f(1) = 8 f(4) = 131 f(16) = 16

f :: Integer -> Integer
f n | n == 1 = 8
    | n == 4 = 131
    | n == 16 = n

-- b) Analogamente, especificar e implementar la funci´on parcial g :: Integer -> Integer:
-- g(8) = 16 g(16) = 4 g(131) = 1

g ::  Integer -> Integer 
g n | n == 8 = 16
    | n == 16 = 4
    | n == 131 = 1


--c) A partir de las funciones definidas en los ´ıtems a) y b), implementar las funciones parciales h = f ◦ g y k = g ◦ f

h :: Integer -> Integer
k :: Integer -> Integer
h n = f (g n)

k n = g (f n)

-- ####################################

-- 2)
-- ⋆ Especificar e implementar las siguientes funciones, incluyendo su signatura:

-- a) absoluto: calcula el valor absoluto de un numero entero.
-- absoluto :: Integer -> Integer
absoluto n | n < 0 = -n
           | otherwise = n

-- Para que funcione la ultima funcion



-- b) maximoAbsoluto: devuelve el maximo entre el valor absoluto de dos numeros enteros.

maximoAbsoluto :: Integer -> Integer -> Integer
-- maximoAbsoluto x y | absx >= absy = absx
--                    | otherwise = absy
                    -- where absx = absolute x
                    -- where absy = absolute y  -> consulta por error de compilacion
                    -- where (absx, absy) = (absolute x, absolute y)
maximoAbsoluto x y  | absoluto x >= absoluto y =  x
                    | otherwise =  y

--c) maximo3: devuelve el m´aximo entre tres n´umeros enteros.
maximoNormal :: Integer -> Integer -> Integer
maximoNormal x y | x >= y = x
                 | otherwise = y
                 
maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 a b c = maximoNormal (maximoNormal a b) c


--d) algunoEsCero: dados dos n´umeros racionales, decide si alguno es igual a 0 (resolverlo con y sin pattern matching).

--pattern matching
algunoEsCero1 :: Float -> Float -> Bool
algunoEsCero1 0 _ = True
algunoEsCero1 _ 0 = True
algunoEsCero1 _ _ = False

--sin pattern matching
algunoEsCero2 :: Float -> Float -> Bool
algunoEsCero2 x y | x == 0 = True   
                  | y == 0 = True  
                  | otherwise = False


-- e) ambosSonCero: dados dos n´umeros racionales, decide si ambos son iguales a 0 (resolverlo con y sin pattern matching).
--patern matching
ambosSonCero1 :: Float -> Float -> Bool
ambosSonCero1 0 0 = True
ambosSonCero1 _ _ = False

--sin pattern matching
ambosSonCero2 :: Float -> Float -> Bool
ambosSonCero2 x y | (x == 0) && (y == 0) = True   
                  | otherwise = False


--f) enMismoIntervalo: dados dos n´umeros reales, indica si est´an relacionados por la relaci´on de equivalencia en R cuyas
--clases de equivalencia son: (−∞, 3],(3, 7] y (7, ∞), o dicho de otra manera, si pertenecen al mismo intervalo.


enMismoIntervalo :: Float -> Float -> Bool

enMismoIntervalo x y | x <= 3 && y <= 3 = True
                     | (x > 3 && x <=7) && (y > 3 && y <=7) = True
                     | x > 7 && y > 7 = True
                     | otherwise = False


-- g) sumaDistintos: que dados tres n´umeros enteros calcule la suma sin sumar repetidos (si los hubiera).

sumaDistintos :: Integer -> Integer -> Integer -> Integer
sumaDistintos a b c | (a /= b && a  /= c  &&  b /= c) = a + b + c
                    | (a /= b && a  /= c  &&  b == c) = a + b
                    | (a == c && a  /= b) = a + b
                    | (a == b && a /= c) = a + c
                    | (a == b && a == c) = a

-- h) esMultiploDe: dados dos n´umeros naturales, decide si el primero es m´ultiplo del segundo.

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe x y | (y /= 0) &&  (mod x y) == 0 = True
                 | otherwise = False


-- i) digitoUnidades: dado un n´umero entero, extrae su d´ıgito de las unidades.

digitoUnidades :: Integer -> Integer -> Integer

digitoUnidades x counter | absx <= 9  = absx
                         | absx > 9 && mod (absx - counter) 10 == 0 = counter
                         | otherwise = digitoUnidades x (counter + 1)

                 where absx = abs x 


-- j)

digitoDecenas :: Integer -> Integer -> Integer
-- sacarUnidades :: Integer -> Integer

digitoDecenas x counter | absx <= 9 = 0
                        | absx < 99 =  div absx 10
                        | absx > 99 && mod (absx - counter) 100 == 0 = div counter 10
                        | otherwise = digitoDecenas x (counter + 10)

                where absx = abs x - digitoUnidades x 0  