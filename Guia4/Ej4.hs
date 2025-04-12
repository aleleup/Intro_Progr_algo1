
sumaImpares ::  Integer ->Integer 
nesimoImpar :: Int -> Int
nesimoImpar x = 2 * x - 1 


sumaImpares x | x <= 1 = 1
              | x /= 1 = nesimoImpar x + sumaImpares (x-1)