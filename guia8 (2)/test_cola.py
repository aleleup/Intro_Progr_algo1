'''
    Introducción a la Programación 
    1er Cuatrimestre 2025
    Práctica 8: Operaciones sobre Colas
'''
import unittest
from queue import Queue as Cola
from random import randint

class TestCola(unittest.TestCase):
    # Crear una cola vacía
    def test_vacia(self):
        c = Cola() 
        self.assertTrue(c.empty())

    # Encolar un número cualquiera en una cola
    def test_un_elemento_cualquiera(self):
        c = Cola()
        c.put(5)
        self.assertEqual(c.qsize(), 1)
    
    # Encolar un 3
    def test_un_elemento_particular(self):
        c = Cola()
        c.put(3)
        self.assertEqual(c.get(), 3)

    # Encolar 1 y 2
    def test_dos_elementos(self):
        c = Cola()
        c.put(1)
        c.put(2)
        self.assertEqual(c.get(), 1)
        self.assertEqual(c.get(), 2)

    # Encolar un número aleatorio a la pila
    def test_un_aleatorio(self):
        c = Cola()
        c.put(randint(1, 5))
        self.assertEqual(c.qsize(), 1)

    # Encolar una cantidad aleatoria de ceros entre 1 y 10
    def test_ceros_aleatorios(self):
        c = Cola()
        N = randint(1, 10)
        for i in range(N): 
            c.put(0)
        self.assertEqual(c.qsize(), N)

if __name__ == '__main__':
    unittest.main(verbosity=2)