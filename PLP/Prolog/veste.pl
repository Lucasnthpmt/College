%     Arquivo: veste.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------

%  Fonte:  http://www.facom.ufu.br/~marcelo/PL/tutorial%20de%20prolog.pdf

% Aqui começa o programa     ...
pessoa(ale).       %           Alexandra
pessoa(babe).      %           Barbara
pessoa(rosa).
pessoa(cris).  %adicionado
cor(azul).
cor(amarelo).
cor(vermelho).
cor(lilaz).
cor(verde).
cor(branco). %adicionado
cor(preto). %adicionado

% este pedaço é importante...pois....está
% dito no problema e define uma cor para cada menina


tem_uma_cor(babe,amarelo).
tem_uma_cor(rosa,verde).
tem_uma_cor(ale,branco).
tem_uma_cor(cris,preto).   %adicionado

%% aqui  pode-se ampliar as restrições
nao_pode_vestir(babe,verde).
nao_pode_vestir(rosa,azul).
nao_pode_vestir(rosa,lilaz).
%adicionado
nao_pode_vestir(ale,preto).
nao_pode_vestir(cris,branco).

veste(X, Cor1, Cor2):- pessoa(X), cor(Cor1), cor(Cor2), tem_uma_cor(X,Cor1),
      \+(nao_pode_vestir(X,Cor2)),                /* é um fato que deve ser negado */
      Cor1 \== Cor2 ,                             /*C1 diferente de C2 */
      /* não  pode ter amarelo e  vermelho com  C1  e  C2  e  vice-versa           */
      \+(
         ((Cor1  = vermelho), /*C1 tem  que ser diferente de Vermelho           */
         (Cor2   = amarelo))                                                       /* idem para   amarelo....  */
;                                                                                                                                                                                                                                                             /*                      ;           ou           */
         ((Cor1 =  amarelo) ,                      /*,e ... ocontrário  */
         (Cor2  =  vermelho))
).


ache_tudo :-
veste(X,C1,C2),
write(X),
write(' veste as cores '), write(C1),
write('.... e ....'), write(C2),
nl,
fail.



coresVestimentas :- veste(X,C1,C2), write(X), write(' ====> '), write(C1), write('.. e ..'), write(C2), nl,
          fail.
          ache_tudo.

%% Consulta:
 ache_tudo.
