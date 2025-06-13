from queue import Queue

# 9)
def torneo_de_gallinas(strat: dict[str, str]) -> dict[str, int]:
    res: dict[str, int] = {}

    for key in strat:
        if key not in res:
            points: int = 0
            for player in strat:
                if player == key: continue
                if strat[key] == 'me la banco':
                    if strat[player] == 'me la banco':
                        #chocan
                        points-=5
                    if strat[player] != 'me la banco':
                        #gana
                        points+=10
                else:
                    if strat[player] == 'me la banco':
                        #pierde
                        points-=15
                    if strat[player] != 'me la banco':
                        points-=10

            res[key] = points
    print(res)
    return res


# torneo_de_gallinas(
#     {'a': 'me la banco', 'b': 'no me la banco', 'c': 'me la banco', 'd': 'no me la banco', 'e': 'no me la banco', 'f': 'no me la banco'}
# )
def fill_result(res: Queue[str], queue: Queue[str]):
    while not queue.empty():
        res_item: str = queue.get()
        res.put(res_item)

def reoredenar_cola_priorizando_vips(fila_clientes: Queue[tuple[str, str]]) -> Queue[str] :
    vip_queue: Queue[str] = Queue()
    normal_queue: Queue[str] = Queue()
    # files_client_copy: Queue = copy_queue(fila_clientes)
    res: Queue[str] = Queue()
    store_fila_clientes_element: list[tuple] = []

    while not fila_clientes.empty():
        client: tuple = fila_clientes.get()
        if client[1] == 'vip':
            vip_queue.put(client[0])
        else:
            normal_queue.put(client[0])
        store_fila_clientes_element.append(client)

    for element in store_fila_clientes_element:
        fila_clientes.put(element)


    fill_result(res, vip_queue)
    fill_result(res, normal_queue)

    
    return res 
   


# fila_clientes = Queue()
# for i in range(14):
#     if i%3 == 0:
#         fila_clientes.put((f'cliente_{i}', 'vip'))
#     else:
#         fila_clientes.put((f'cliente_{i}', 'comun'))

# print(fila_clientes)
# print('################')
# x = reoredenar_cola_priorizando_vips(fila_clientes) 
# print(fila_clientes.full(), x.empty())
# 11)
def ver_reverso(text:str) -> str:
    i: int = len(text) - 1
    new_text: str = ''
    for l in text:
        new_text+= text[i]
        i -= 1
    return new_text

def cuantos_sufijos_son_palindromos(text:str) -> int:
    res: int = 0

    for i in range(len(text)):
        sufijo: str = text[i: ]
        if sufijo == ver_reverso(sufijo):
            print(sufijo)
            res+=1
    return res       

# cuantos_sufijos_son_palindromos('milaal')

# 12)

def check_winner(character: int) -> bool:
    if character == 3: return True
    return False

def quien_gano_el_tateti_facilito(tablero: list[list[str]]) -> int:
   
    res:int = 0
    x_won: bool = False
    o_won: bool = False
    for i in range(len(tablero)):
        for j in range(len(tablero[i])):
            cant_x_cons: int = 0
            cant_o_cons: int = 0
            for k in range(len(tablero)):
                if tablero[k][j] == 'X' and not (x_won):
                    cant_x_cons+=1
                    cant_o_cons = 0
                    x_won = check_winner(cant_x_cons)
                if tablero[k][j] == 'O' and not (o_won):
                    cant_x_cons = 0
                    cant_o_cons += 1
                    o_won = check_winner(cant_o_cons)
        if not (x_won or o_won):
            return 0
        if x_won and not o_won:
            return 1
        if not x_won and o_won :
            return 2
        if x_won and o_won:
            return 3
        


print(quien_gano_el_tateti_facilito(
    [
        ['','','','','','','','','',''],
        ['X','','X','','','','','','',''],
        ['O','','O','','','','','','',''],
        ['X','','O','','','O','','','',''],
        ['X','','','','','O','','','',''],
        ['O','','X','','','O','','','','O'],
        ['','','X','','','','','','','O'],
        ['','','','','','','','','',''],
        ['','','','','','','','','',''],
        ['','','','','','','','','',''],
        
    ]
))
