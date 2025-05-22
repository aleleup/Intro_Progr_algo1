'''
    Introducción a la Programación 
    1er Cuatrimestre 2025
    Práctica 8: Pilas y Colas 
'''

from queue  import LifoQueue as Pila
from queue  import Queue as Cola
from random import randint

# Ejercicio 1.1
def generar_numeros_al_azar(cantidad: int, desde: int, hasta: int) -> Pila[int]:
    # requiere: cantidad >= 0
    # requiere: desde <= hasta
    return

# Ejercicio 1.3
def buscar_el_maximo(p: Pila[int]) -> int:
    # requiere: p no está vacía
    return

# Ejercicio 2.13.1
def armar_secuencia_de_bingo() -> Cola[int]:
    # requiere: True
    return

# Ejercicio 2.13.2
def jugar_carton_de_bingo(carton: list[int], bolillero: Cola[int]) -> int:
    # requiere: carton contiene 12 números entre 0 y 99 inclusive, sin repetidos
    # requiere: bolillero contiene 100 números del 0 al 99 inclusive, sin repetidos
    return

""" 
    FUNCIONES AUXILIARES
"""

def print_pila(p: Pila[int]) -> None:
    p_aux: Pila[int]= Pila()
    
    # Desapilo, imprimo y guardo en pila auxiliar
    while not p.empty():
        elem: int = p.get()
        p_aux.put(elem)
        print(elem, end="\n--\n")
 
    # Vuelvo a poner todo lo de pila auxiliar en p
    while not p_aux.empty():
        p.put(p_aux.get())

def print_cola(c: Cola[int]) -> None:
    c_aux: Cola[int]= Cola()
    
    # Desapilo, imprimo y guardo en pila auxiliar
    while not c.empty():
        elem: int = c.get()
        c_aux.put(elem)
        print(elem, end=" | ")
 
    # Vuelvo a poner todo lo de pila auxiliar en p
    while not c_aux.empty():
        c.put(c_aux.get())