def columnas_ordenados(matriz:list[list[int]]) -> bool:
    i:int = 0
    res:bool = True
    for i in range(len(matriz)):
        for j in range(len(matriz[i])):
            i2:int = 1
            prev_val:int = matriz[i][j]
            while i2 != len(matriz[i]):
                print(prev_val, matriz[i2][j])
                if prev_val > matriz[i2][j]:
                    res = False
                    break
                else: 
                    prev_val = matriz[i2][j]
                    i2+=1
        break
    print("res", res)
    return res


columnas_ordenados([[1,2,3], 
                    [2,3,4], 
                    [5,6,7]
                    ])


            