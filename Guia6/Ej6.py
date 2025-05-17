def imprimir_1a10():
    i = 1
    while i <= 10:
        print(i)
        i+=1

# imprimir_1a10()


def imprimir_pares_10a40():
    i = 10
    while i <= 40:
        print(i)
        i+=2

# imprimir_pares_10a40()

def eco():
    i = 1
    while i <= 10:
        print('eco')
        i+=1

# eco()

def despegar_cohete(num:int=10):
    while num >1:
        print(num)
        num-=1
    print("Despegue")

# despegar_cohete(8000)


def viajar_al_pasado(desde:int, hasta:int):
    while desde > hasta:
        desde-=20
        print(f"viajamos un año al pasado, estamos en el {desde}")


viajar_al_pasado(2025, -384)