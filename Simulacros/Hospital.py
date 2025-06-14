from queue import Queue
# 13

def print_queue(queue: Queue) -> None:
    store: list = []   
    while not queue.empty():
        x = queue.get()
        print(x)
        store.append(x)
    
    store_into_queue(store, queue)
    

def store_into_queue(list_elements: list, queue: Queue) -> None:
    for element in list_elements:
        queue.put(element)

def orden_de_atencion(urgent: Queue, postergable: Queue) -> Queue:
    res: Queue = Queue()
    urgent_pacient_store: list = []
    postergable_pacient_store: list = []

    i: int = 0
    while not urgent.empty():
        pacient_to_store: int = 0
        if i % 2 == 0:
            pacient_to_store: any = urgent.get()
            urgent_pacient_store.append(pacient_to_store)
        else:
            pacient_to_store: any = postergable.get()
            postergable_pacient_store.append(pacient_to_store)
        i+=1
        res.put(pacient_to_store)
    
    store_into_queue(urgent_pacient_store, urgent)
    store_into_queue(postergable_pacient_store, postergable)


    print_queue(res)
    return res

# urgent_queue = Queue()
# posterg_queue = Queue()
# for i in range(30):
#     if i %2 == 0:
#         posterg_queue.put(10000 + i)
#     else:
#         urgent_queue.put(10000 + i)

# orden_de_atencion(urgent_queue, posterg_queue)

        
# 14)
def alarama_epidemiologica(registros: list[tuple[int, str]], infecciosas: list[str], umbral: float) -> dict[str, int]:

    sickeness_counter_store: dict[str, int] = {} 
    total_register: int = len(registros)
    res: dict[str, int] = {}
    for pacient in registros:
        # pacient: tuple(str, int)
        pacient_sickness: str  = pacient[1]
        if pacient_sickness in infecciosas:
            if pacient_sickness not in  sickeness_counter_store:
                sickeness_counter_store[pacient_sickness] = 1
            else:
                sickeness_counter_store[pacient_sickness]+=1
    for sickness in sickeness_counter_store:
        percent: float = sickeness_counter_store[sickness] / total_register
        if percent > umbral: 
            res[sickness] = percent

    print(res)
    return res

# registros = [(1, 'a'), (2, 'x'), (3, 'a'), (4, 'a'), (5, 'd'), (6, 'f'), (7, 'x'), (8, 'x'), (9, 'x'), (10, 'a'), (11, 'a')]
# umbral = 0.4
# infecciosas = ['a', 'x']

# alarama_epidemiologica(registros, infecciosas, umbral)
            
    
# 15)

def sumat(l: list[int]) -> int:
    acc: int = 0
    for n in l:
        acc+=n

    return acc


def empleado_del_mes(horas: dict[int, list[int]]) -> list[int]:
    max_horas: dict[int, int] = {}
    res: list[int] = []
    max:int  = 0
    for worker in horas:
        total_time: int =sumat(horas[worker])
        max_horas[worker] = total_time
        if total_time > max:
            max = total_time    

    for worker in max_horas: 
        if max_horas[worker] == max:
            res.append(worker)
    
    print(res)
    return res
    

# empleado_del_mes({
#     0: [4,5,4,6,3,4,2,0,2],
#     1: [8,8,8,8,8,8,8,8,8],
#     2: [8,8,8,8,8,8,8,8,9],
# })



def nivel_de_ocupacion(beds_x_story: list[list[int]]) -> list[float]:
    res: list[float] = []
    for i in range(len(beds_x_story)):
        beds_ocupied: int = 0
        total_beds: int = 0
        for j in range (len(beds_x_story[i])):
            if beds_x_story[i][j]:
                beds_ocupied+=1
            total_beds+=1
        res.append(beds_ocupied / total_beds)

    print(res)
    return res



nivel_de_ocupacion([
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
    [False, False,False, False,False, False, False, False, False, False,],
])