import unittest
from queue  import LifoQueue as Pila # Agregamos el tipo de datos para trabajar con Pilas
from random import randint


def generar_nros_al_azar(cantidad:int, desde:int, hasta:int)->Pila[int]:
    i:int = 0
    pila:Pila[int] = []
    while i < cantidad:
        x:int = randint(desde, hasta)
        pila.append(x)
        i+=1

    print(pila)
    return pila

# generar_nros_al_azar(45, 100, 200)




def buscar_el_maximo(p:Pila) -> int: 
    acc:int = 0
    p2:int = p.copy()
    while not len(p2) == 0:
        x:int = p2.pop()
        if x > acc:
            acc = x
    print(acc)
    return acc

buscar_el_maximo([6,4,7,2,1,-1])
        

