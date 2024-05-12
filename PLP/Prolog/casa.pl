% Programa casa.pl
%
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Ano: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------
%    Ver mapa da casa
%
%------------- FATOS  -----------------------
lugar(sala).
lugar(cozinha).
lugar(escritorio).
lugar(corredor).
lugar('sala de jantar').
lugar(celeiro).
lugar(jardim).
lugar(quarto).
lugar(banheiro).
lugar('sala de estar').
lugar(garagem).

porta(escritorio, corredor).
porta(cozinha, escritorio).
porta(corredor, 'sala de jantar').
porta(cozinha, celeiro).
porta('sala de jantar', cozinha).
porta(corredor, banheiro).
porta('sala de estar', corredor).
porta('sala de estar', cozinha).
porta('sala de estar', banheiro).
porta(jardim, garagem).
porta(escritorio, quarto).
porta(quarto, banheiro).

localizacao(escrivaninha, escritorio).
localizacao(laranja, cozinha).
localizacao(lanterna, escrivaninha).
localizacao('maq de lavar', celeiro).
localizacao(sabao, 'maq de lavar').
localizacao(verdura, cozinha).
localizacao(faca, cozinha).
localizacao(panela, cozinha).
localizacao(arroz, cozinha).
localizacao(uva, cozinha).
localizacao(biscoitos, cozinha).
localizacao(computador, escritorio).
localizacao(mesa,'sala de jantar').
%adicionado pt1
localizacao(caderno, quarto).
localizacao('guarda roupa', quarto).
localizacao(ventilador, quarto).
localizacao(celular, quarto).
%adicionado pt2
localizacao(chuveiro, banheiro).
localizacao(espelho, banheiro).
localizacao(shampoo, banheiro).
localizacao(sabonete, banheiro).
%adicionado pt3
localizacao(televisao, 'sala de estar').
localizacao(cadeira, 'sala de estar').
localizacao(relogio, 'sala de estar').
localizacao(sofa, 'sala de estar').
%adicionado pt4
localizacao(carro, garagem).
localizacao(moto, garagem).
localizacao(bicicleta, garagem).
localizacao(ferramentas, garagem).

comestivel(laranja).
comestivel(biscoitos).
comestivel(arroz).
comestivel(uva).

gosto_amargo(verdura).

estamos_em(quarto).

%%---------------  REGRAS --------------------
conectar(X,Y) :- porta(X,Y).
conectar(X,Y) :- porta(Y,X).

lista_coisas(Lugar) :-
           localizacao(X, Lugar),
           tab(2),
           write(X),
           nl,
           fail.
           lista_coisas(Nestelugar).
           
lista_portas(Lugar) :-
           conectar(Lugar, X),
           tab(2),
           write(X),
           nl,
           fail.
           lista_portas(_).
           
observar :- estamos_em(Lugar),
            write('Voce esta na '), write(Lugar), nl,
            write('Voce pode ver:'), nl,
            lista_coisas(Lugar),
            write('Voce pode ir para:'), nl,
            lista_portas(Lugar).

  
mover(Lugar):- retract(estamos_em(X)), asserta(estamos_em(Lugar)).

posso_ir(Lugar):- estamos_em(X), conectar(X, Lugar).
posso_ir(Lugar):- write('Voce nao pode ir de aqui para '), write(Lugar), nl, fail.

goto(Lugar):- posso_ir(Lugar), mover(Lugar), observar.

% Completar Regras

estou(Lugar):-
              estamos_em(Lugar),
              write('Estamos na '), write(Lugar), nl,
              write('Podemos ver '), nl,
              lista_coisas(Lugar),
              write('Podemos ir para '), nl,
              lista_portas(Lugar).

comestiveis_cozinha :-
                    comestivel(X),
                    tab(2),
                    write(X),
                    nl,
                    fail.
                    lista_coisas(NesteLugar).
objetos(X) :-
           localizacao(X, R), porta(cozinha, R),
           write(R).
