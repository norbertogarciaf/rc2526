/*

aniadir_final(+Elem, +Lista, -ListaR) 
    es cierto cuando ListaR unifica con una lista
    que contiene los mismos elementos que la lista 
    Lista con el elemento Elem añadido al final.

*/

aniadir_final(Elem, [], [Elem]).

aniadir_final(Elem, [Cabeza|Resto], [Cabeza|RestoR]) :-
    aniadir_final(Elem, Resto, RestoR). 
    
/* 
El resto no se pone [Resto], ya que Resto de por si ya es una lista.
*/


