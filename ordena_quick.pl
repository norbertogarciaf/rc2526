%-----------------------------------------------------
% divide(+Elem, +Lista, -Menores, -Mayores)
  % es cierto cuando Menores unifica con una lista que
  % contiene los elemenentos de Lista que son menores
  % o iguales que Elem y Mayores unifica con una lista
  % que contiene los elementos de Lista que son
  % mayores que Elem.
%------------------------------------------------------

divide(_, [], [], []). % caso base - ningún elemento -> lista vacía

divide(Elem, [Cab|Resto], Menores, [Cab|Mayores]) :- Elem < Cab, % si los numeros son mayores, ese elemento es menor
    												 divide(Elem, Resto, Menores, Mayores). % sigo son los restantes mayores

divide(Elem, [Cab|Resto], [Cab|Menores], Mayores):- Elem > Cab, % si los numeros son menores, ese elemento es mayor
        											divide(Elem, Resto, Menores, Mayores). % sigo con los restantes menores

%---------------------------------------------------
% ordena_quick(+Lista, -ListaR).
  % es cierto cuando ListaR unifica con una lista que
  % contiene los mismos elementos que Lista ordenados
  % de menor a mayor.
%--------------------------------------------------

ordena_quick([], []). % caso base - ningún elemento -> lista vacía

ordena_quick([Cab|Resto], R) :- divide(Cab, Resto, Menores, Mayores), % cogemos los menores y los mayores de ese pivote
    							ordena_quick(Menores, RMenores), % ordenamos esos menores
								ordena_quick(Mayores, RMayores), % ordenamos esos mayores
    							append(RMenores, [Cab|RMayores], R). % unimos los menores con los mayores, donde entre ellos estará la Cab inicial
