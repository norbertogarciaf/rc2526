/*

pertenece(?Elemento, ?Lista)
  se cumple cuando Elemento está dentro de la Lista.

Definición recursiva:
- Caso base: el elemento coincide con la cabeza de la lista.
- Caso recursivo: si no es la cabeza, se busca en el resto de la lista.

*/

pertenece(Elemento, [Elemento|_]).
pertenece(Elemento, [_|Cola]) :-
    pertenece(Elemento, Cola).
