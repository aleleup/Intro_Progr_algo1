""" 
    Introducción a la Programación 
    1er Cuatrimestre 2025
    Práctica 7: Funciones sobre listas
"""

def ordenados(s: list[int]) -> bool :
    # requiere: True
    res: bool = # COMPLETAR asignación
    i: int = 1
    # Estrategia: Recorrer la lista, si el i-esimo elemento es más chico que el anterior, entonces podemos confirmar que no está ordenada
    while 0 < i and i < len(s):
        if : # COMPLETAR condición
            res =  # COMPLETAR asignación
        i = i + 1
    return res

# Función opcional
def columnas(m: list[list[int]]) -> list[list[int]]:
    # requiere: es_matriz(m)
    # asegura: lista 
    return []

def columnas_ordenadas(m: list[list[int]]) -> list[bool]:
    # requiere: es_matriz(m)
    return []

# Procedimiento auxiliar
def print_matriz(m: list[list[int]]) -> None:
    for f in m:
        print(f)