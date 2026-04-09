/* 
cuenta_nodos_ab(+Arbol_binario, ?Num_nodos)
    es cierto cuando Num_nodos unifica con el
    numero de nodos del árbol Arbol_binario
*/

cuenta_nodos_ab(nil, 0).

cuenta_nodos_ab(a(_, Hi, Hd), R):- 
    cuenta_nodos_ab(Hi, Ri), 
    cuenta_nodos_ab(Hd, Rd), 
    R is Ri + Rd + 1.


 arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)))).

/*
arbol1(A), cuenta_nodos_ab(A, R).
*/