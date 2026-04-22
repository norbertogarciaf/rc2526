arbol1(a(a, [a(b, [a(e, [])]), a(c, []), a(d, [])])).

/* 
	cuenta_nodos(+Arbol_generico, ?Num_nodos)
	es cierto cuando Num_nodos unifica con el
	numero de nodos del árbol “Arbol_generico” 
*/
cuenta_nodos(a(_, ListaHijos), N) :-
    cuenta_lista(ListaHijos, N1),
    N is N1 + 1.

cuenta_lista([], 0).
cuenta_lista([Cab|Res], N) :-
    cuenta_nodos(Cab, N1),
    cuenta_lista(Res, N2),
    N is N1 + N2.