%--------------------------------------------------
% permuta(Lista, ListaR).
% es cierto cuando ListaR unifica con una lista
% que contiene los elementos de Lista en orden
% distinto. Este predicado genera todas las
% listas posibles por backtraking.
%--------------------------------------------------

permuta([], []).

permuta(Lista, [Cab|Resto]) :- selecciona_uno(Cab, Lista, L),
                               permuta(L, Resto).

%--------------------------------------------------
% selecciona_uno(+Lista, -Elem, -Resto)
% es cierto cuando Elem unifica con cualquier
% elemento de la lista Lista y Resto unifica
% con una lista que contiene los elementos de
% Lista, en el mismo orden menos el elemento Elem.
%--------------------------------------------------

selecciona_uno([Ca|R], Ca, R).

selecciona_uno([Ca|Co], E, [Ca|R]) :- selecciona_uno(Co, E, R).
