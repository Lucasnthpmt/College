% Arquivo:      pets.pl
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------

% Relacionamentos entre proprietários e animais de estimação
animal_estimacao(joao, gato).
animal_estimacao(maria, gato).
animal_estimacao(maria, periquito).
animal_estimacao(pedro, cachorro).
animal_estimacao(ana, cachorro).
animal_estimacao(carlos, peixe).

% Regras para determinar o dono de um animal
dono(X, Y) :- animal_estimacao(X, Y).

