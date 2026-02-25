/*

num_elem(+Lista, -Resultado)
     es cierto si Resultado unifica con el
     número de elemtnos de Lista.

Principio de inducción

1) num_elemento([], 0).

2) num_elemento(n-1) -> num_elemento(n).

*/

num_elemento([], 0).

num_elemento([_|Resto], N) :- num_elemento(Resto, N1),
    N is N1 + 1.
