zeroInit([H|_]) :- 
	H =:= 0.

has5(L) :- L = [_,_,_,_,_].

hasN(L,N) :- length(L, X), X =:= N.

potN0(-1,[]).
potN0(N,L):- 
	N >= 0,
	H is 2^N,
	L = [H | T],
	N1 is N-1, 
  potN0(N1,T).

zipmult([],[],[]).
zipmult( [H|T], [H1|T1], L):- 
	X is H*H1,
	L = [X | T2],
  zipmult(T, T1, T2).

potencias(0, []).
potencias(A, L):- 
	aux(0, L, A).
aux(_, [], 0).
aux(X, L, A):-
	X1 is 2 ^ X,
	L = [X1 | T],
	X2 is X + 1,
	B is A - 1,
  aux(X2, T, B).

positivos([], []).
positivos([H | T], L) :-
	H < 0,
	positivos(T, L).
positivos([H | T], [H | L1]) :-
	H >= 0,
	positivos(T, L1).

mesmaPosicao(_, [], []) :- false.
mesmaPosicao(A,L1,L2) :-
	L1 = [H1|T1],
	L2 = [H2|T2],
	A == H1, A == H2.
mesmaPosicao(A,L1,L2) :-
	L1 = [H1|T1],
	L2 = [H2|T2],
	A \= H1, A \= H2,
  mesmaPosicao(A, T1, T2).

comissao(0,_,[]).
comissao(N, [X | T], [X | Y]) :-
	N > 0,
	N1 is N - 1,
	comissao(N1, T ,Y).
comissao(N, [_ | T], Y) :-
	N > 0,
	comissao(N, T, Y).
