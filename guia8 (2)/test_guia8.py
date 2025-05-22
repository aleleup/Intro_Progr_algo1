""" 
    Introducción a la Programación 
    1er Cuatrimestre 2025
    Práctica 8: Pilas y Colas 
 """
import unittest
from queue import LifoQueue as Pila
from queue import Queue as Cola
from guia8 import (
    generar_numeros_al_azar, 
    buscar_el_maximo, 
    armar_secuencia_de_bingo, 
    jugar_carton_de_bingo
)

class TestNumerosAlAzar(unittest.TestCase):
    # Caso: La cantidad es 0
    def test_cantidad_cero(self):
        cantidad, desde, hasta = 0, 0, 10
        p = generar_numeros_al_azar(cantidad, desde, hasta)
        self.assertTrue(p.empty())

    # Caso: La cantidad es 10
    def test_cantidad_10(self):
        cantidad, desde, hasta = 10, 0, 10
        p = generar_numeros_al_azar(cantidad, desde, hasta)

        self.assertEqual(p.qsize(), 10)

        while not p.empty():
            self.assertIn(p.get(), range(desde, hasta + 1))

    # Caso: El rango es desde 10 hasta 20
    def test_cantidad_10_20(self):
        cantidad, desde, hasta = 10, 10, 20
        p = generar_numeros_al_azar(cantidad, desde, hasta)

        self.assertEqual(p.qsize(), 10)

        while not p.empty():
            self.assertIn(p.get(), range(desde, hasta + 1))

class TestBuscarMaximo(unittest.TestCase):
    # Caso: Pila con un solo elemento
    def test_un_elemento(self):
        p = Pila()
        p.put(7)
        self.assertEqual(buscar_el_maximo(p), 7)

    # Caso: Pila con varios elementos
    def test_varios_elementos(self):
        p = Pila()
        for i in range(6):
            p.put(i)
        self.assertEqual(buscar_el_maximo(p), 5)

    # Caso: Pila con números negativos
    def test_negativos(self):
        p = Pila()
        p.put(-1)
        p.put(-2)
        p.put(-3)
        self.assertEqual(buscar_el_maximo(p), -1)

class TestSecuenciaBingo(unittest.TestCase):
    # Caso: La lista contiene 100 elementos
    def test_cantidad_elementos(self):
        bolillero = armar_secuencia_de_bingo()
        self.assertEqual(bolillero.qsize(), 100)

    # Caso: Los valores de la lista están en el rango 0 a 99 inclusive
    def test_en_rango(self):
        bolillero = armar_secuencia_de_bingo()
        while not bolillero.empty():
            self.assertIn(bolillero.get(), range(0, 100))

    # Caso: Sin repetidos
    def test_sin_repetidos(self):
        bolillero = armar_secuencia_de_bingo()
        l = []
        while not bolillero.empty():
            bolilla = bolillero.get()
            self.assertNotIn(bolilla, l)
            if bolilla not in l:
                l.append(bolilla)

class TestJugarCarton(unittest.TestCase):
    # Caso: El jugador gana en las primeras 12 jugadas
    def test_gana_en_primeras_12(self):
        carton = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
        bolillero = Cola()
        for i in range(0, 12):
            bolillero.put(i)
        resultado = jugar_carton_de_bingo(carton, bolillero)
        self.assertEqual(resultado, 12)

    # Caso: El jugador gana en la última jugada
    def test_gana_en_ultima(self):
        carton = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
        bolillero = Cola()
        for i in range(49, -1, -1):
            bolillero.put(i)
        resultado = jugar_carton_de_bingo(carton, bolillero)
        self.assertEqual(resultado, 50)

if __name__ == '__main__':
    unittest.main(verbosity=2)