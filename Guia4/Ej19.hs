esSumaInicialDePrimos :: Integer -> Bool
esSumaInicialDePrimos 0 = False
esSumaInicialDePrimos nEsimoPrimo = probarSumaDesde n 1

probarSumaDesde sumaRestante i  | sumaRestante == False = True
                                | sumaRestante < 0 = False
                                |otherwise = probarSumaDesde (sumaRestante - (nEsimoPrimo i)) (i+1)


nEsimoPrimo n | n == 1 = 2
              | otherwise = siguientePrimo (nEsimoPrimo(n-1))


siguientePrimo n | esPrimo (n+1) = n + 1
                 |  otherwise = siguientePrimo (n+1)

