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
ceros_en_pos_pares([0,1,2,3,4,5,6,7,8,9])
ceros_en_pos_pares2([0,1,2,3,4,5,6,7,8,9])
problema_sin_vocales(['a', 'b', 'c'])
reemplaza_vocales(['u', 'b', 'c'])
dar_vuelta_str(['u', 'r', 'r','a','t','a'])
sacar_repetidos('urrata')





