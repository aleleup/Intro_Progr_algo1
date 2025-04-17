--a)

-- eAprox :: Int -> Float
-- factorial :: Int -> Int
--Preguntar por tipados



eAprox n | n == 0 = 1
         | otherwise = 1 / (factorial (n)) + eAprox (n-1)


factorial n | n == 0 = 1
            | otherwise = n * factorial (n-1)



--b)

e :: Float
e = eAprox 10

