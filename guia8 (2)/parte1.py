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

def columnas(m: list[list[int]]) -> list[int]:
    # requiere: es_matriz(m)
    res: list[int] = []
    # Estrategia: recorrer el rango de columnas y agregar los elementos de la columna j en una lista auxiliar
    for j in range(len()): # COMPLETAR len
        columna = []
        for i in range(len()): # COMPLETAR len
            columna.append() # COMPLETAR append
        res.append() # COMPLETAR append
    return res

def columnas_ordenadas(m: list[list[int]]) -> list[bool]:
    # requiere: es_matriz(m)
    res: list[int] = []
    for c in columnas(m):
        res.append() # COMPLETAR append   
    return res

# Procedimiento auxiliar
def print_matriz(m: list[list[int]]) -> None:
    for f in m:
        print(f)
