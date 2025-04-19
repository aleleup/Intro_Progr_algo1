-- fibonacci :: Int -> Int

-- fibonacci n | n == 0 = 0
--             | n == 1 = 1
--             | n > 1 =  fibonacci (n-1) + fibonacci(n-2)

-- esFibo n = checkFibo n n

-- checkFibo n originalN   | n < 0 = False
--                         | originalN == fibonacci n = True
--                         | otherwise = n ==