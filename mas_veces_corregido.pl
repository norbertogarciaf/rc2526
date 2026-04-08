/*
mas_veces(+Lista, -Elem, -Num)
    es cierto cuando Elem unifica con el elemento
    que se repite más veces en la lista Lista
    y Num unifica con el número de veces que se
    repite dicho elemento.
*/

mas_veces(Lista, Elem, Num) :-
    comprimir(Lista, R),
    mayor_n(R, Elem, Num).

/*

mayor_n(+ListaComprimida, -Elem, -N).
    es cierto si Elem unifica con el elemento que se
    repite más veces en ListaComprimida y N unifica con 
    el número de veces que se repite elem.
    ListaComprimida tiene el siguiente formato:
    ListaComprimida = [(a, 3), (b, 2), (c, 3), (a, 2)]

*/

mayor_n([(Elem, N)], Elem, N).

mayor_n([(Elem1, N1), (Elem2, N2) | Resto], Elem, N) :-
    N1 >= N2,
    mayor_n([(Elem1, N1) | Resto], Elem, N).

mayor_n([(Elem1, N1), (Elem2, N2) | Resto], Elem, N) :-
    N1 < N2,
    mayor_n([(Elem2, N2) | Resto], Elem, N).

/*
comprime(+Lista, -R).
    
    es cierto si R unifica con una lista de la siguiente forma:

    comprime([a,a,a,b,b,,c,c,c,a,a], R)
    R = [(a, 3), (b, 2), (c, 3), (a, 2)]
    R = [a-3, b-2, c-3, a-2]
*/

comprimir([], []).

comprimir([Elem], [(Elem,1)]).

comprimir([Cab, Cab|Resto], [(Cab,N2)|R]) :- 
    comprimir([Cab|Resto], [(Cab,N)|R]), 
    N2 is N + 1.

comprimir([Cab1, Cab2|Resto], [(Cab1,1)|R]) :- 
    Cab1 \= Cab2, 
    comprimir([Cab2|Resto], R). 
  


