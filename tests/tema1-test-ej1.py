import unittest
from Simulacros.Simulacro_Tema1 import maximas_cantidades_consecutivos


class Ej1Test(unittest.TestCase):
   def test_1(self):
       list_1: list[int] = [1,1,1,2,3,3,3,4,5,5,5,6,6,4,4,4,4,4,4,4]
       dict_1 = maximas_cantidades_consecutivos(list_1)

       self.assertEqual(dict_1, {1:3, 
                                 2:1, 
                                 3:3,
                                 4:7, 
                                 5:3, 
                                 6:2})

       
if __name__ == '__main__':
    unittest.main(verbosity=2)