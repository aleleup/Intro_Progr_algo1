comparar :: Integer -> Integer -> Integer
sumaUltimoDosDigitos :: Integer -> Integer 
comparar a  b| sumaUltimoDosDigitos a < sumaUltimoDosDigitos b = 1
             | sumaUltimoDosDigitos a > sumaUltimoDosDigitos b = -1
             | sumaUltimoDosDigitos a == sumaUltimoDosDigitos b = 0


sumaUltimoDosDigitos x = mod (abs x) 10 + mod (div (abs x)  10) 10