def estan_relacionados(a: int, b: int) -> bool: 
    k = ((-a)/ b)
    print(a ** 2 + a*b*k == 0 and k % 1 == 0)



estan_relacionados(1, 4)
estan_relacionados(8, 2)
estan_relacionados(9, 3)
estan_relacionados(7, 3)
