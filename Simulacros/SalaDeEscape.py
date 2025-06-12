# 5)

def promedio_de_salidas(register: dict[str, list[int]]) -> dict[str, tuple[int, float]]:
    res: dict[str, tuple[int, float]] = {}

    for person in register:
        time_list: list = register[person]
        total_sec: int = 0
        cant_salas: int = 0
        for time in time_list:
            if time > 0 and time < 61:
                total_sec+=time
                cant_salas+=1
        
        res[person] = (cant_salas, total_sec/cant_salas)

    print(res)
    return res



# 6)
def tiempo_mas_rapido(tiempo_salas: list[int]) -> int:
    index_store: int = 0
    lower_val: int = 61 #pues cualquier n < 60 cumple con que se termino el juego.

    for i in range(len(tiempo_salas)):
        time = tiempo_salas[i]
        if time < lower_val and time > 0 and time < 61:
            lower_val = time
            index_store = i
    
    print(index_store)
    return index_store


# 7)
def racha_mas_larga(tiempos: list[int]) -> tuple[int]:
    start_index: int = 0
    acc_times: int = 0
    cant_tiempos: int = 0
    busca_racha: bool = True
    res_start_index: int = 0
    res_end_index: int = 0
    for i in range(len(tiempos)):
        time = tiempos[i]
        if time > 0 and time < 61:
            if busca_racha:
                busca_racha = False
                start_index = i
            cant_tiempos +=1
        else: 
            busca_racha = True
            cant_tiempos = 0

        if cant_tiempos > acc_times:
            acc_times = cant_tiempos
            res_start_index = start_index
            res_end_index = i
    
    print(res_start_index, res_end_index)
    return (res_start_index, res_end_index)



def escape_en_solitario(amigos_por_salas: list[list[int]]) -> list[int]:
    res: list[int] = []
    for i in range(len(amigos_por_salas)):
        sala = amigos_por_salas[i]
        if not (sala[0] or sala[1] or sala[3]) and sala[2]:
            res.append(i)

    print(res)
    return res

# register1 = {
#     'a': [60,60,60],
#     'b': [2,8,7],
#     'c': [54,61,60]
# }

# promedio_de_salidas(register1)
# tiempo_mas_rapido([59,1])


# racha_mas_larga([1,2,3,61,0,0,13,12,6,4, 0,0,61,61,60,9,9,9,9,9,9,9,9,9,9,9,9,9,9])
escape_en_solitario([
    [0,0,61,0],
    [1,0,61,0],
    [3,6,61,1],
    [0,0,1,0],
    [3,6,6,1],
])