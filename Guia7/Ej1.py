#10)
def es_palindromo(string:str)-> bool:
    res:bool = True
    i:int = 0
    for l in string:
        if string[i] != string[-1 - i]:
            res = False
            break
        else:
            i+=1
    return res

#11)
def iguales_consecutivos(sec:list[int]) -> bool:
    i:int = 0
    
    while len(sec) != i+2:
        print(f'iteracion {i}, elementos a eval: {sec[i], sec[i+1], sec[i+2]}')
        if sec[i] == sec [i+1] and sec[i] == sec[i+2]:
            return True
        else: i+=1
        
    return False


# print(iguales_consecutivos([1,54,54,32,64,64,12351,1]))

# 12)
def vocales_distintas(string:str) -> bool:
    vocales:list[str] = ['a', 'e', 'i', 'o', 'u']
    vocales_en_string:list[str] = []

    for letter in string:
        if letter in vocales and not (letter in vocales_en_string):
            vocales_en_string.append(letter)
    
    return len(vocales_en_string) >= 3


# print(vocales_distintas('Tu vieja'))

# 13)
def secuencia_ordenada_mas_larga(sec:list[int]) -> list[int]:
    i:int = 0
    j:int = 0
    secuencia_de_secuencias_ordenadas : list[list[int]] = []
    # secuencia_ordenada:list[int] = []
    while i < len(sec) -1:
        
        if sec[i] > sec[i+1]:
            secuencia_de_secuencias_ordenadas.append(sec[j:i+1])
            j = i + 1
        i+=1


#TODO mañana lo termino
        
    print(secuencia_de_secuencias_ordenadas)

# print(secuencia_ordenada_mas_larga([1,2,3,4,5,6,3,5,3,1,24,2,25]))



#14) 
def cantidad_digitos_impares(sec:list[int]) -> int:
    cantidad_de_impares:int = 0
    for n in sec:
        x:int = n
        i:int = 0
        while (n//(10**i)) != 0 :
            if (n//(10**i)) % 2 != 0: cantidad_de_impares+=1
            i+=1

    print(cantidad_de_impares)



cantidad_digitos_impares([1,401,126,77,999])
    # pass