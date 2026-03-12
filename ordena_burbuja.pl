%-----------------------------------------------------
  % ordena_burbuja(+Lista, -ListaR).
    % es cierto cuando ListaR unifica con una lista que
    % contiene los mismos elementos que Lista ordenados
    % de menor a mayor.
%-----------------------------------------------------

ordena_burbuja(Lista, Lista) :- ordenada(Lista).

ordena_burbuja(Lista, RT) :- append(Ini,[E1,E2|Fin], Lista), % coge un inicio, un par consecutivo de una lista (une dos listas)
                             E1>E2,
                             append(Ini, [E2,E1|Fin], R), % pone esa lista restante (R) con los elementos ahora ordenados
                             ordena_burbuja(R, RT). % burbuja de lo que queda

%-----------------------------------------------------
  % ordena(+Lista).
    % es cierto cuando Lista está ordenadana de
    % menor a mayor
%-----------------------------------------------------

ordenada([]).

ordenada([_]).

ordenada([Cab1, Cab2|Resto]) :- Cab1 =< Cab2, ordenada([Cab2|Resto]).
