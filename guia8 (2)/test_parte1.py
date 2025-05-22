'''
    Introducción a la Programación 
    1er Cuatrimestre 2025
    Práctica 7: Funciones sobre listas
'''
import unittest
from parte1 import columnas_ordenadas

class TestColumnasOrdenadas(unittest.TestCase):
    def test_matriz_cero(self):
        m: list[int] = # COMPLETAR asignación
        self.assertEqual(columnas_ordenadas(m), [True])
    
    def test_matriz_unica_columna_desordenada(self):
        m: list[int] =  # COMPLETAR asignación
        self.assertEqual(columnas_ordenadas(m), [False])

    def test_matriz_unica_fila(self):
        m: list[int] =  # COMPLETAR asignación
        self.assertEqual(columnas_ordenadas(m), [True, True, True, True])

if __name__ == '__main__':
    unittest.main(verbosity=2)