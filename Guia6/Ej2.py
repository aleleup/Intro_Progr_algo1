from math import ceil

def imprimr_saludo(nombre:str):
    print(f"Hola {nombre}")


def raiz_cuadrada_de(n:int) -> float:
    return round (n ** (1/2), 4)

def fahrenheit_a_celsius(temp_far:float)->float:
    return (temp_far - 32) *  5/9


def imprimir_dos_veces(estribillo:str)->str:
    print(estribillo * 2)

def es_multiplo(n:int, m:int) -> bool:
    if n % m == 0: return True
    else: return False


def es_par(n:int) -> bool:
    if es_multiplo(n,2): return True
    else: return False
print(fahrenheit_a_celsius(90))

def cantidad_de_pizzas(comensales:int, min_cant_de_porciones:int)->int:
    return ceil((comensales * min_cant_de_porciones)/8)

print(es_multiplo(4,2))
print(es_par(5))
print(cantidad_de_pizzas(5,2))