type Texto = [Char]
type Disponibilidad = Bool
type Identificacion = Integer
type Ubicacion = Texto
type Estado = (Disponibilidad, Ubicacion)
type Locker = (Identificacion, Estado)
type MapaDeLockers = [Locker]

--Mapa de Lockers:
lockers :: MapaDeLockers
lockers = [
    (100,(False,"ZD39I")),
    (101,(True,"JAH3I")),
    (103,(True,"IQSA9")),
    (105,(True,"QOTSA")),
    (109,(False,"893JJ")),
    (110,(False,"99292"))
    ]
--

--1)

existeElLocker :: Identificacion -> MapaDeLockers -> Bool
existeElLocker id (l:ls) | ls == [] = esMismoId id l
                         | otherwise = esMismoId id l || existeElLocker id ls
esMismoId :: Identificacion -> Locker -> Bool
esMismoId id (tuplaId, _) = tuplaId == id

--2)

ubicacionDelLocker :: Identificacion -> MapaDeLockers -> Ubicacion
ubicacionDelLocker id (l:ls)    | ls == [] && not (esMismoId id l)= "No Existe El locker"
                                | esMismoId id l = buscaUbicacion l
                                | otherwise = ubicacionDelLocker id ls

buscaUbicacion :: Locker-> Ubicacion
buscaUbicacion (_, (_, ubicacion)) = ubicacion



--3)

estaDisponibleELlocker :: Identificacion -> MapaDeLockers -> Disponibilidad
estaDisponibleELlocker id (l:ls)    | esMismoId id l = verDisponibilidad l
                                    | otherwise = estaDisponibleELlocker id ls

verDisponibilidad :: Locker-> Disponibilidad
verDisponibilidad (_, (dispo, _)) = dispo

--4)


ocuparLocker :: Identificacion -> MapaDeLockers -> MapaDeLockers
ocuparLocker id (l:ls)  | ls == [] && not (esMismoId id l) = [l]
                        -- | ls == [] && (esMismoId id l) = [cambiarDispo l]
                        | esMismoId id l = cambiarDispo l : ls
                        | otherwise = l : ocuparLocker id ls

cambiarDispo :: Locker -> Locker
cambiarDispo (id, (dispo, ubi)) | dispo == True = (id, (not dispo, ubi))
                                | otherwise = (id, (dispo, ubi))