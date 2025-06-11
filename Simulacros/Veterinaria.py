#1)
def stock_productos(stock: list[tuple[str, int]]) -> dict[str, tuple[int]]:
    res: dict[str, tuple[int]] = {}
    for prod in stock:
        key: str = prod[0]
        # 
        if key in res:
            value: int = prod[1]
            if value < res[key][0]:
                max_val: int = res[key][1]
                res[key] = (value, max_val)
            elif value > res[key][1]:
                min_val: int = res[key][0]
                res[key] = (min_val, value,)
        else:
            res[key] = (prod[1], prod[1])
        
    print(res)
    return res

lista = [('a', 10), ('a', 9), ('a', 1), ('b', 9), ('b', 17),('b', 86), ('c', 1)]

#2)

def es_primo(n: int) -> bool:
    if n == 2 or n == -2 : return True
    if n % 2 == 0 or n == 1: return False
    for i in range(3, n, 2):
        if n % i == 0: 
            print(f'{i}|{n}')
            return False
    return True

def ultimos_3_digitos(n:int) -> int:
    str_n: str = str(n)
    return int(str_n[-3:])

def filtrar_codigos_primos(codes: list[int]) -> list[int]:
    res: list[int] = []
    for code in codes:
        if es_primo(ultimos_3_digitos(code)):
            res.append(code)    
    print(res)
    return res


#3)
def subsecuencia_mas_larga(animals: list[str]) -> int:
    new_index: int = 0
    searching_for_dog_cat: bool = True
    acc: int = 0
    dog_cat_list: list[str] = ['perro', 'gato']
    dog_cat_quant: int = 0
    res: int = 0
    for i in range(len(animals)):
        animal: str = animals[i]
        if animal in dog_cat_list:
            if searching_for_dog_cat:
                new_index = i
                searching_for_dog_cat = False
            acc+=1
        else:
            searching_for_dog_cat = True
            acc = 0
        if acc > dog_cat_quant:
            res = new_index
            dog_cat_quant = acc

    
    print(res)
    return res



def un_responsable_por_turno(grilla_horaria: list[list[str]]) -> list[tuple[bool]]:

    for i in range(len(grilla_horaria)):
        res: list[tuple[bool]] = []
        for j in range(len(grilla_horaria[i])):
            fst_component: bool = True
            snd_component: bool = True
            for k in range(len(grilla_horaria)):
                if k < 4:
                    horario: str = grilla_horaria[0][j]
                    if  horario != grilla_horaria[k][j]:
                        fst_component = False
                else: 
                    horario: str = grilla_horaria[4][j]
                    if  horario != grilla_horaria[k][j]:
                        snd_component = False
            res.append((fst_component, snd_component))

        print(res)
        return res
                
    
            


#LLAMAR FUNCIONES
# stock_productos(lista)
# filtrar_codigos_primos([242012, 457412, 100184, 7000087, 481074128469])
# subsecuencia_mas_larga(['perro', 'perro', 'gato', 'gato', 'perro', 'gato', 
#                         'perro', 'conejo', 'gato', 'gato', 'perro', 'gato',
#                         'perro', 'perro', 'gato', 'gato', 'trava', 'gato',
#                         'perro', 'loro', 'gato', 'gato', 'perro', 'gato',
#                         ])
un_responsable_por_turno([
    ['x', 'x', 'x', 'x', 'm'],
    ['x', 'x', 'x', 'x', 'x'],
    ['x', 'f', 'x', 'x', 'x'],
    ['x', 'x', 'x', 'x', 'x'],
    ['a', 'a', 'a', 's', 's'],
    ['a', 'a', 'a', 'a', 'x'],
    ['a', 'a', 's', 'a', 'x'],
    ['a', 'a', 'a', 'a', 'x'],
])