
arbol1(a(1, [
    a(2, []),
    a(3, [
        a(4, [
            a(5, []),
            a(6, [])
        ])
    ])
])).
/*
altura_ag(+ArbolGenerico, -Altura)
    es cierto si Altura unifica con la altura de ArbolGen.
*/


altura_ag(a(_,ListaArboles), R2) :-
    altura_lista_ag(ListaArboles, R), 
    R2 is R + 1.
    
    
altura_lista_ag([], 0).

altura_lista_ag([Cab|Resto], AlturaListaAG) :- 
    altura_lista_ag(Resto,R),
    altura_ag(Cab,RCa),
    AlturaListaAG is max(R,RCa).


