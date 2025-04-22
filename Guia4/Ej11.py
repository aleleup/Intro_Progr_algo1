import math as m

def e_aprox(n: int) -> float:
    res = 0

    for i in range(n):
        res += 1/m.factorial(i) 
    
    
    print(res)
e_aprox(9999)
