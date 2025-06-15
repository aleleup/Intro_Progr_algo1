from queue import Queue

def maximas_cantidades_consecutivos(v:list[int]) -> dict[int, int]:
    res: dict[int, int] = {}
    quant_cons_num: int = 0
    prev_diferent_num: int = 0
    for num in v:
        if num != prev_diferent_num: 
            quant_cons_num = 0
            prev_diferent_num = num 
        if num in res:
            quant_cons_num+=1
            if quant_cons_num > res[num]:
                res[num] = quant_cons_num
        else:
            quant_cons_num = 1
            res[num] = 1
    print(res)
    return res
# maximas_cantidades_consecutivos( [1,1,1,2,3,3,3,4,5,5,5,6,6,4,4,4,4,4,4,4])


# 2)


def es_primo(n:int) -> bool:
    if n == 2: return True
    if n == 1 or n % 2 == 0:
        return False
    for i in range(3, n, 2):
        if n%i == 0:
            return False
        
    return True



def maxima_cantidad_primos(matrix: list[list[int]]) -> int:
    for i in range(len(matrix)):
        max_p: int = 0
        for j  in range(len(matrix[i])):
            p_per_c : int = 0
            for k in range(len(matrix)):
                if es_primo(matrix[k][j]):
                    p_per_c += 1
            if p_per_c > max_p:
                max_p = p_per_c
        print(max_p)
        return max_p
    


# maxima_cantidad_primos([
#     [1,1,2,3,4,10,6],
#     [197,1,2,6,4,8,6],
#     [0,2,2,2,4,5,6],
#     [197,2,9,3,4,5,6],

# ])

def it_product(sec:tuple[int|float]|list[int|float]) -> int|float:
    res: int|float = 1
    for i in range(len(sec)):
        res *= sec[i]
    return res



# 3)
def pass_list_item_to_queue(l:list, queue:Queue):
    for element in l:
        queue.put(element)

def print_queue(queue: Queue) -> None:
    store: list = []   
    while not queue.empty():
        x = queue.get()
        print(x)
        store.append(x)
    
    pass_list_item_to_queue(store, queue)
    

def tuplas_positivas_y_negativas(c: Queue) -> None:
    positive_tuple_store: list[tuple[int, int]] = []
    negative_tuple_store: list[tuple[int, int]] = []

    while not c.empty():
        n_tuple = c.get()
        n_tuple_prod: int = it_product(n_tuple)
        if n_tuple_prod > 0:
            positive_tuple_store.append(n_tuple)
        if n_tuple_prod < 0:
            negative_tuple_store.append(n_tuple)

    pass_list_item_to_queue(positive_tuple_store, c)
    pass_list_item_to_queue(negative_tuple_store, c)


# list1 = [(0,0),(1,2), (30,-1471041), (7451421, 1),  (0,-1471041), (-2, -2), (8, -1), (34, -9), (4,4), (-8, -77), (10_000, 1)]
# queue1 = Queue()
# pass_list_item_to_queue(list1, queue1)
# print_queue(queue1)
# print('------------')
# tuplas_positivas_y_negativas(queue1)
# print_queue(queue1)

# 4)
def handle_minus_n(s:list) -> list:
    if s[0] in [ '-', '+']:
        x = s.pop(0)
        if x == '-':
            s[0] = f'-{s[0]}'
def string_to_list_floats(s: str) -> list[float]:
    switch: bool = True
    starting_index: int = 0
    res: list[int] = []
    number: str = ''
    for i in range(len(s)):
        if s[i] in ['+', '-']:
            if i > 0:
                res.append(number)
                number = ''
            res.append(s[i])
        else:
            number += s[i]
    res.append(number)

    return res


def handle_arithmetic(l: list[str]):
    print('CUENTA',l)
    for i in range(len(l)):
        if l[i] not in ['+', '-']:
            l[i] = float(l[i])
    if l[1] == '+':
        return l[0] + l[2]
    else: return l[0] - l[2]
def resolver_cuenta(s: str) -> float:
    operadores: list[str] = ['+', '-']
    s_list: list[str] = string_to_list_floats(s)
    while len(s_list)  >2:
        handle_minus_n(s_list)
        s_list = s_list[3:] + ['+'] + [handle_arithmetic(s_list[0:3])]

    handle_minus_n(s_list)
    return s_list[0]
print(resolver_cuenta('-2+0-5.667+2'))