'''
    Introducción a la Programación 
    1er Cuatrimestre 2025
    Práctica 8: Operaciones sobre Pilas
'''
import unittest
from queue  import LifoQueue as Pila # Agregamos el tipo de datos para trabajar con Pilas
from random import randint

class TestPila(unittest.TestCase):
    # Crear una Pila vacía
    def test_vacia(self):
        p = Pila() 
        self.assertTrue() # COMPLETAR assert

    # Completar para que apile un número fijo cualquiera en una pila
    def test_un_elemento_cualquiera(self):
        p = Pila()
        # COMPLETAR apilar un número fijo cualquiera
        self.assertEqual(p.qsize(), 1)
    
    # Completar para que apile un 3 en la pila
    def test_un_elemento_particular(self):
        p = Pila()
        # COMPLETAR apilar un 3
        self.assertEqual(, 3) # COMPLETAR parámetro del assert para verificar que la pila tiene un 3

    # Completar para que apile 1 y luego 2
    def test_dos_elementos(self):
        p = Pila()
        # COMPLETAR apilar números
        self.assertEqual(, 2) # COMPLETAR assert
        self.assertEqual(, 1) # COMPLETAR assert

    # Completar para que apile un número aleatorio
    def test_un_aleatorio(self):
        p = Pila()
        # COMPLETAR apilar número aleatorio
        self.assertEqual(p.qsize(), 1)

    # Completar el test para apilar ceros una cantidad aleatoria de veces, entre 1 y 10
    def test_ceros_aleatorios(self):
        p = Pila()
        N =  # COMPLETAR asignación
        for i in range(): # COMPLETAR range
            # COMPLETAR apilar un cero
        self.assertEqual(p.qsize(), N)

if __name__ == '__main__':
    unittest.main(verbosity=2)