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
  


