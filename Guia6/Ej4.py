def peso_pino(metros:int) -> int:
    x:int = 0
    if metros <= 3: x = 300 * metros
    else: 
        metros-=3
        x = 900 + 200*metros
    return x

def es_peso_util(peso_pino:int) -> bool:
    x:bool = False
    peso_esperado:int = 900
    if peso_pino >= peso_esperado: return True
    
    return x


def sirve_pino(altura:int) -> bool:
    x:bool = False
    peso_esperado:int = 900
    if peso_pino(altura) >= peso_esperado: return True
    
    return x



print(es_peso_util(peso_pino(500)))


    
