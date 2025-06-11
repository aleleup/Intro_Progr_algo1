def pertenece_a_cada_uno_version_1(sec:list[list[int]], e:int, res:list[bool]=[]): #sec->in, e-> in, res-> inout
    for num_list in sec:
        x:bool = e in num_list
        res.append(x)
    
    print(res)
    return res

def pertenece_a_cada_uno_version_3(sec:list[list[int]], e:int) -> list[bool]: #sec->in, e-> in
    res:list[bool] = []
    
    for num_list in sec:
            x:bool = e in num_list
            res.append(x)
        
    print(res)
    return res



##

def es_matriz(sec:list[list[int]]) -> bool:
    len_of_fstlist: int = len(sec[0])
    res: bool = True   
    for lst in sec:
        if len(lst) != len_of_fstlist:
            res = False
    print(res)
    return res
    

def fila_ordenada(matriz:list[list[int]], res:list[bool]=[]):
    for fila in matriz:
        i: int = 0
        prev_val: int = 0
        res_item: bool = True
        for num in fila:
            if i == 0 or prev_val <= num: 
                prev_val = num
            else :
                res_item = False
                break
            i+=1
        res.append(res_item)


    print(res)



def columna(matriz:list[list[int]], col:int) -> list[int]:
    res: list[int] = []
    for fila in matriz:
        res.append(fila[col])

    return res

def columnas_ordenadas(matriz:list[list[int]]) -> bool:
    i: int= 0
    orden_columnas:list[bool] = []
    matriz_traspuesta: list[list[int]] = []
    
    for fila in matriz:
        matriz_traspuesta.append(columna(matriz, i))
        i+=1

    fila_ordenada(matriz_traspuesta, orden_columnas)

    print(orden_columnas)
    return orden_columnas



def transponer(matriz:list[list[int]]) -> list[list[int]]:
    matriz_traspuesta: list[list[int]] = []
    i: int= 0

    for fila in matriz:
        matriz_traspuesta.append(columna(matriz, i))
        i+=1
    
    print(matriz_traspuesta)
    return matriz_traspuesta


# def columnas_ordenados(matriz:list[list[int]]) -> bool:
#     i:int = 0
#     res:bool = True
#     for i in range(len(matriz)):
#         for j in range(len(matriz[i])):
#             i2:int = 1
#             prev_val:int = matriz[i][j]
#             while i2 != len(matriz[i]):
#                 print(prev_val, matriz[i2][j])
#                 if prev_val > matriz[i2][j]:
#                     res = False
#                     break
#                 else: 
#                     prev_val = matriz[i2][j]
#                     i2+=1
#         break
#     print("res", res)
#     return res

# en_clase


 
#LLAMADAS
# pertenece_a_cada_uno_version_1([[1,2,3],[1,3,5], [5,1,6]], 3)
# pertenece_a_cada_uno_version_3([[1,2,3],[1,3,5], [5,1,6]], 3)
# es_matriz([
#      [1,3,5]
#     ,[1,6,8]
#     ,[26,8,7]])

# fila_ordenada([
#      [-1,3,5]
#     ,[1,6,8]
#     ,[26,8,7]])
# columna([
#      [-1,3,5]
#     ,[1,6,8]
#     ,[26,8,7]],  2)
# columnas_ordenadas([
#      [2,3,5]
#     ,[1,6,8]
#     ,[26,8,7]])
transponer([
     [2,3,5]
    ,[1,6,8]
    ,[26,8,7]])