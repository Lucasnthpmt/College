% programa  02-familia-A.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------

%Questão 3
% mulher(eva). -> significa que eva é uma mulher

% filho(F,P):-homem(F),pai(P,F). -> significa que F é filho de P se F for homem
% e P for pai de F

% filho(F,M):-homem(F),mae(M,F). -> significa que F é filho de M se F for homem
% e M for mãe de F

% filha(F,P):-mulher(F),pai(P,F). -> significa que F é filha de P se F for mulher
% e P for pai de F

% filha(F,M):-mulher(F),mae(M,F). -> significa que F é filha de M se F for mulher
% e M for mãe de F



 % FATOS
    mulher(maria).
    mulher(eva).
    mulher(martha).
    homem(adam).
    homem(pedro).
    homem(paulo).
    pai(adam,pedro). % significa adam é pai de pedro
    pai(adam,paulo).
    marido(adam,eva).
    esposa(eva,adam).
    mae(eva,maria).
    mae(eva,pedro).
    filha(maria,eva).
    filha(maria,adam).
    filha(suzana,martha).
    irma(eva,martha).

 % REGRAS

    filho(F,P):-homem(F),pai(P,F).
    filho(F,M):-homem(F),mae(M,F).
    
    filha(F,P):-mulher(F),pai(P,F).
    filha(F,M):-mulher(F),mae(M,F).
