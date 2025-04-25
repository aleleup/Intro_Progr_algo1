--Tipos de Datos
type Texto = [Char]
type Nombre = Texto
type Telefono = Texto
type Contacto = (Nombre, Telefono) 
type ContactosTel = [Contacto]
--
--Aux sugeridas
elNombre :: Contacto -> Nombre
elNombre (nombre, _) = nombre

elTelefono :: Contacto -> Telefono
elTelefono (_, numeroTel) = numeroTel
 
 --Casos de prueba
misContactos :: ContactosTel
misContactos = [ ("Juan", "1234")
               , ("Ana", "5678")
               , ("Pedro", "9876")
               , ("Lucia", "1111")
               ]


 

--a
enLosContactos :: Nombre -> ContactosTel -> Bool
enLosContactos _ [] = False
enLosContactos nombre (x:xs)    | xs == [] = elNombre x == nombre
                                | otherwise = elNombre x == nombre || enLosContactos nombre xs

--b
agregarContactos :: Contacto -> ContactosTel -> ContactosTel
agregarContactos nuevoContacto (c:cs)   | cs == [] && elNombre nuevoContacto == elNombre c = [nuevoContacto]
                                        | cs == [] = [c, nuevoContacto]
                                        | elNombre nuevoContacto == elNombre c = nuevoContacto : cs
                                        | otherwise = c : agregarContactos nuevoContacto cs

--c
eliminarContactos :: Nombre -> ContactosTel -> ContactosTel
eliminarContactos nombre (c:cs) | cs == [] && nombre == elNombre c = []
                                | cs == [] = [c]
                                | nombre == elNombre c =  cs
                                | otherwise = c : eliminarContactos nombre cs
