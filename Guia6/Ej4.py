def peso_pino(metros:int) -> int:
    if metros <= 3: return 300 * metros
    else: 
        metros-=3
        return 900 + 200*metros
    

def es_peso_util(peso_pino:int) -> bool:
    peso_esperado:int = 900
    if peso_pino >= peso_esperado: return True
    return False


def sirve_pino(altura:int) -> bool:
    peso_esperado:int = 900
    if peso_pino(altura) >= peso_esperado: return True
    return False



print(es_peso_util(peso_pino(500)))


    
