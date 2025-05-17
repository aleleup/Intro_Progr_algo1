def doble_si_es_par(num:int)-> int:
    x:int = 0
    if num %2 == 0: x = 2*num
    else: x = num

    return x

def devolver_num_par_o_siguiente(num:int)-> int:
    x:int = 0
    if num %2 == 0: x = num
    else: x = num+1

    return x


def devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(num:int)->int:
    x:int = 0
    x = num
    if num % 3 == 0: x = 2 * num
    # elif num % 9 == 0: x = 3 * num    
    if num % 9 == 0: x = 3 * num

    return x


print(devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(18))


def vacaciones_o_trabajar(sexo:str, edad:int)->str:
    caso:str = ''
    if edad < 18 or (sexo == 'F' and edad >= 60) or (sexo == 'M' and edad >= 65): caso = 'vacaciones'
    else: caso = 'trabajar' 