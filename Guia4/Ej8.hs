calculaSumaDigitos :: Int -> Int -> Int -> Int
sumaDigitos :: Int -> Int 


calcularDigitosN n acc | n <= 9 = acc
                       | n > 9 && division == 0 = acc
                       | otherwise = calcularDigitosN n (acc + 1)
            where division = div n (10 ^ acc)


calculaSumaDigitos x acc digito | (digito) == (calcularDigitosN x 0) = acc  
                         | otherwise = calculaSumaDigitos x (acc + buscaDigito) (digito + 1)
                    where buscaDigito = div (mod x (10 ^ (digito + 1))) (10 ^ digito )
c

sumaDigitos x | x <= 9 = x
              | x > 9 = calculaSumaDigitos x 0 0