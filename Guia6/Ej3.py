def alguno_es_0(n1:float, n2:float) -> bool:
    return n1 == 0 or n2 == 0

def ambos_son_0(n1:float, n2:float) -> bool:
    return n1 == 0 and n2 == 0

def es_nombre_largo(name:str) -> bool:
    return len(name) >= 3 and len(name) <=8

def es_bisiesto(a:int) -> bool:
    return (a % 400==0 ) or (a%4 == 0 and a% 100 != 0)


print(es_bisiesto(2100))