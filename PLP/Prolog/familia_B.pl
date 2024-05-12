% programa  02-familia-B.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------
 % FATOS

    mulher(luisa).  % significa luisa é uma mulher
    mulher(eva).
    mulher(martha).
    homem(adam).
    homem(pedro).
    homem(paulo).
    pai(adam,pedro). % significa adam é pai de pedro
    pai(adam,paulo).
    marido(adam,eva).
    esposa(eva,adam).
    mae(eva,luisa).
    mae(eva,pedro).
    filha(maria,eva).
    filha(luisa,adam).
    filha(suzana,martha).
    irma(eva,martha).

 % REGRAS

    filho(F,P):-homem(F),pai(P,F).
    filho(F,M):-homem(F),mae(M,F).
    
    filha(F,P):-mulher(F),pai(P,F).
    filha(F,M):-mulher(F),mae(M,F).

% Completar as regras:

    irma(X,Y) :- pai(P,X),pai(P,Y),mae(M,X),mae(M,Y),X \= Y.
    irmao(X,Y) :-pai(P,X),pai(P,Y),mae(M,X),mae(M,Y),X \= Y.

    prima(X,Y) :- irmao(Z,P),mae(Z,X),mae(P,Y),X \= Y.

    tia(Z,W) :- mulher(Z),irma(Z,M),filha(W,M).
    tia(Z,W) :- mulher(Z),irma(Z,M),mae(M,W).
