sumaRacionales :: Float -> Float -> Float 

sumaRacionales n m | n == 0 = 0
                   | otherwise = sumaMismoNumDistintoDen n m + sumaRacionales (n-1) m



sumaMismoNumDistintoDen :: Float -> Float -> Float

sumaMismoNumDistintoDen n m | m == 1 = n
                                   | otherwise = n/m + sumaMismoNumDistintoDen n (m-1)

