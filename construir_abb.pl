/*
  construir_abb(+Lista, -Arbol)
  construye un árbol binario de búsqueda equilibrado
  a partir de los elementos de Lista.
*/

construir_abb([], nil).

construir_abb(Elementos, a(Nodo, Izq, Der)) :-
    length(Elementos, Tam),
    Pos is Tam // 2,
    length(ParteIzq, Pos),
    append(ParteIzq, [Nodo | ParteDer], Elementos),
    construir_abb(ParteIzq, Izq),
    construir_abb(ParteDer, Der).
