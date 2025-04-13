todosDigitosIguales :: Integer -> Bool
buscaDigitosIguales :: Integer -> Integer -> Integer -> Bool

buscaDigitosIguales x acc modAcc | modVar /= 0 = False
                                 | modVar == 0 && acc > x = True 
                                 | otherwise = buscaDigitosIguales x (acc * 10) (mod modAcc acc)
                    where modVar = div (mod x acc) (div acc 10) - mod x 10 -- nesimo digito menos primer digito

todosDigitosIguales x | x <= 10 = True  
                      | x > 10 = buscaDigitosIguales x 10 x