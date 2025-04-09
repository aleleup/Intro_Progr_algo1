todosMenores :: (Integer, Integer, Integer) -> Bool
f :: Integer -> Integer
g :: Integer -> Integer

f x | x <= 7 = x * x
    | otherwise = 2 * x -1

g x | mod x 2 == 0 = div x 2
    | otherwise = 3 * x + 1


todosMenores (t0, t1, t2 ) | (f t0 > g t0) &&  (f t1 > g t1) && (f t2 > g t2) = True
                           | otherwise = False