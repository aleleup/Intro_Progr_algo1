buscaParteEntera :: Float -> Int -> Int

buscaParteEntera x acc | x < 0 = acc - 1    
                       | x >= 0 = buscaParteEntera (x - 1) (acc + 1)
       

parteEntera :: Float -> Int
parteEntera x | x < 0 = 0
              | x >= 0 = buscaParteEntera x 0

