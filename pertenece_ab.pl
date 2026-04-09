arbol1(a(1, a(2,nil,nil), a(3,nil, a(4,nil,nil)))).

/*

pertenece(+Elem, +Arbol)
    es cierto si la etiqueta Elem 
    pertenece a Arbol_binario.
*/


pertenece(Elem, a(Elem, _, _)).

pertenece(Elem, a(_, Hi, _)):- 
    pertenece(Elem, Hi).

pertenece(Elem, a(_, _, Hd)) :-
    pertenece(Elem, Hd).