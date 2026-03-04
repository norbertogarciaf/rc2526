/*
invertir(+Lista, -ListaR)
    es cierto cuando ListaR unifica con una lista que contiene los mismos
    elementos que Lista en orden inverso
*/

invertir_lista([], []).

invertir_lista([Cabeza|Cola], ListaR) :-
    invertir_lista(Cola, ColaInvertida),
    append(ColaInvertida, [Cabeza], ListaR).
