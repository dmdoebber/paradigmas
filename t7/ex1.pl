%permutações
perm(List, [H|Perm]) :- delete(H, List, Rest), perm(Rest, Perm).
perm([],[]).

delete(X, [X|T], T).
delete(X, [H|T], [H|NT]) :- delete(X, T, NT).

%regras
regra1(L) :-
  nth0(0, L, f);
  nth0(1, L, f);
  nth0(2, L, f).

regra2(L) :- nextto(h, g, L).

regra3(L) :-
  nth0(1, L, l);
  nth0(2, L, l);
  nth0(3, L, l);
  nth0(4, L, l);
  nth0(5, L, l).

regra4(L) :-
  nth0(0, L, m);
  nth0(6, L, m).

regra5(L) :-
  nth0(4, L, p);
  nth0(5, L, p);
  nth0(6, L, p).

%exercicios
ex1(L) :-
  L = [_,_,_,_,_,_,_],
  Casas = [f, g, h, l, m, p, t],
  perm(L, Casas),
  regra1(L),
  regra2(L),
  regra3(L),
  regra4(L),
  regra5(L).

  exerc2(L, R) :-
  L = [_,_,_,_,_,_,_],
  Casas = [f, g, h, l, m, p, t],
  perm(L, Casas),
  nextto(t, l, L),
  nextto(l, f, L),
  regra1(L),
  regra2(L),
  regra3(L),
  regra4(L),
  regra5(L),
  nth1(R, L, g).

exerc5(L, R) :-
  L = [_,_,_,_,_,_,_],
  Casas = [f, g, h, l, m, p, t],
  perm(L, Casas),
  nextto(f, R, L),
  nextto(R, p, L),
  regra1(L),
  regra2(L),
  regra3(L),
  regra4(L),
  regra5(L).
