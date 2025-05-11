from math import pi as π

def imprimir_hola_mundo():
    print("Hola, mundo")


def imprimir_un_verso():
    print("Hola \n este es un verso \n supuestamente una cancion pero que importa")


def raizDe2() -> float:
    return round (2 ** (1/2), 4)

def perimetro() -> float:
    return 2*π

def fibo(n:int) -> int:
    if n == 0: return 0
    if n == 1: return 1
    else: return fibo(n-1) + fibo(n-2)    
imprimir_hola_mundo()
imprimir_un_verso()
print(raizDe2())
print(perimetro())
print(fibo(6))