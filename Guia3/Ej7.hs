type Space = (Float, Float, Float)
distanciaManhattan :: Space -> Space -> Float

distanciaManhattan (v1, v2, v3) (w1, w2, w3)  = abs (v1 - w1) +  abs (v2 - w2) +  abs (v3 - w3)