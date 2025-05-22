vocales:list[str] = ['a', 'e', 'i', 'o', 'u']
def ceros_en_pos_pares(sec:list[int]):
    i:int=0
    for num in sec:
        if i % 2 == 0:
            sec[i] = 0
        i+=1
    
    print(sec)



def ceros_en_pos_pares2(sec:list[int]) -> list[int]:
    i:int = 0
    res:list[int] = []
    for num in sec:
        if i % 2 == 0:
            res.append(0)
        else:
            res.append(num)
        i+=1
    
    print(res)
    return res


def problema_sin_vocales(sec:list[str]) ->list[str]:
    new_list:list = []
    for l in sec:
        if l not in vocales:
            new_list.append(l)
    print(new_list)
    return new_list



###EJECUCION:

def reemplaza_vocales(sec:list[str]) -> list[str]:
    res:list[str] = []
    for l in sec:
        if l in vocales:
            res.append('')
        else:
            res.append(l)
    print(res)
    return res


def dar_vuelta_str(sec:list[str]) -> list[str]:
    res:list[str] = []
    i:int = 1

    while len(sec) + 1 - i != 0:
        res.append(sec[-i])
        i+=1
    
    print(res)
    return res


def sacar_repetidos(string:str) -> str:
    list_string = list(string)
    new_list:list[str] = []
    for l in string:
        if list_string.count(l) == 1:
            new_list.append(l)
        list_string.pop(0)
    
    print(new_list)
    return ''.join(new_list)


# 3)

def resultados_materias(notas:list[float]) -> int:
    res:int = 0
    son_notas_mayor_a_4:bool = True
    promedio:float = 0
    acc:float = 0
    for nota in notas:
        if nota < 4:
            son_notas_mayor_a_4 = False
        acc+=nota
    
    promedio = acc/len(notas)

    if son_notas_mayor_a_4 and promedio >=7:
        res = 1
    elif son_notas_mayor_a_4 and promedio < 7 and promedio >= 4:
        res = 2
    else:
        res = 3

    print(res)
    return res


def saldo_actual(movimientos:list[tuple]) -> int:
    acc_for_sum:list[float] = []
    acc:float = 0
    for movimiento in movimientos:
        if movimiento[0] == 'R':
            acc_for_sum.append(-1*movimiento[1])
        else: 
            acc_for_sum.append(movimiento[1])

    for num in acc_for_sum:
        acc+=num

    print(acc)
    return acc




# ceros_en_pos_pares([0,1,2,3,4,5,6,7,8,9])
# ceros_en_pos_pares2([0,1,2,3,4,5,6,7,8,9])
# problema_sin_vocales(['a', 'b', 'c'])
# reemplaza_vocales(['u', 'b', 'c'])
# dar_vuelta_str(['u', 'r', 'r','a','t','a'])
# sacar_repetidos('urrata')
# resultados_materias([7,8])
saldo_actual([("I", 2000), ("R", 11), ("I", 500)])