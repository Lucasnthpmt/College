% programa  01-SistemaEspacial.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------
%%

%Questão 1
% Fato estrela(X). -> Significa que X é uma estrela
% Fato orbita(X,Y). -> Significa que X é uma orbita de Y

% Primeira regra é "planeta(P) :- orbita(P,sol)." -> significa que para
% ser um planeta, ele precisa ser uma orbita do sol

% Segunda regra é "satelite(S):- orbita(S,P),planeta(P)." -> significa que para
% ser um satélite, ele precisa ser um planeta e ser uma orbita desse planeta P


%%%%%%%%%%%%%%%%   FATOS   %%%%%%%%%%%%%%%%%%%%%%%%
% Definindo todas as estrelas que serão utilizadas
estrela(betelgeuse).
estrela(canopus).
estrela(arcturus).
estrela(vega).
estrela(sirius).
estrela(capella).
estrela(sol).
%%
estrela(rigel).
estrela(procion).
%%
% Definindo os planetas que orbitam o sol
orbita(mercurio,sol).
orbita(venus,sol).
orbita(terra,sol).
orbita(marte,sol).
orbita(jupiter,sol).
orbita(saturno,sol).
orbita(urano,sol).
orbita(netuno,sol).
%%
% Definindo os satelites que orbitam os planetas
orbita(lua,terra).
orbita(phobos, marte).
orbita(deimos,marte).
orbita(ganimedes, jupiter).
orbita(callisto, jupiter).
orbita(europa,jupiter).
orbita(titan,saturno).
ssolar(sol).

%%%%%%%%%%%%%%%%%   REGRAS   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
planeta(P) :- orbita(P,sol). %para P ser um planeta, ele precisa ser orbita do sol
satelite(S):- orbita(S,P),planeta(P). %para o S ser um satelite, primeiro ele verifica se S é orbita de P e tbm verifica se P é um planeta
ssolar(B) :- planeta(B).
ssolar(B) :- satelite(B).
