arbol2(a(1,
  a(2,
    a(4,
      a(6, nil, nil),
      nil
    ),
    a(3,
      nil,
      a(5,
        nil,
        a(7, nil, nil)
      )
    )
  )
)).

arbol_balanceado(
  a(1,
    a(2,
      a(4, nil, nil),
      a(5, nil, nil)
    ),
    a(3,
      a(6, nil, nil),
      a(7, nil, nil)
    )
  )
).

/*
ab_balanceado(+ArbolBinario)
    es cierto si ArbolBinario unifica con un árbol binario 
    que para todo nodo la diferencia entre la altura del árbol 
    izquierdo y derecho es como máximo 1
    
*/

ab_balanceado(nil).

ab_balanceado(a(_, Izq, Der)) :-
    altura_ab(Izq, AI),
    altura_ab(Der, AD),
    Diff is abs(AI - AD),
    Diff =< 1,
    ab_balanceado(Izq),
    ab_balanceado(Der).

/*
altura_ab(+ArbolBinario, -Altura)
    es cierto cuando Altura unifica con
    la altura del árbol binario ArbolBinario
*/

altura_ab(nil, 0).

altura_ab(a(_, Izq, Der), Altura) :-
    altura_ab(Izq, AI),
    altura_ab(Der, AD),
    Max is max(AI, AD),
    Altura is Max + 1.