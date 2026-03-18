%--------------------------------------------------
% selecciona_uno(+Lista, -Elem, -Resto)
  % es cierto cuando Elem unifica con cualquier
  % elemento de la lista Lista y Resto unifica
  % con una lista que contiene los elementos de
  % Lista, en el mismo orden menos el elemento Elem.
%--------------------------------------------------

selecciona_uno([Cab|Resto], Cab, Resto).

selecciona_uno([Ca|Co], Elem, [Ca|Resto]) :- selecciona_uno(Co, Elem, Resto).
    
%--------------------------------------------------
% permuta(Lista, ListaR).
  % es cierto cuando ListaR unifica con una lista
  % que contiene los elementos de Lista en orden
  % distinto. Este predicado genera todas las
  % listas posibles por backtraking.
%--------------------------------------------------

permuta([], []).

permuta(L, [E|RP]):- selecciona_uno(L, E, R),
					 permuta(R, RP).
