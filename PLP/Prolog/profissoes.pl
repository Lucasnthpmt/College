% Arquivo:      profissoes.pl
% Prof. Ausberto S. Castro Vera
% Disciplina : Paradigmas de Ling. de Programacao
% UENF-CCT-LCMAT-CC
% Date: 2024
% Aluno: Lucas Nathã Monteiro Pimentel de Souza
%-------------------------------------------------

% Fatos
profissao(joao, engenheiro).
profissao(maria, medica).
profissao(carlos, advogado).
profissao(ana, professora).
profissao(pedro, programador).
profissao(lucas, programador).
profissao(luisa, veterinaria).
profissao(fernando, arquiteto).
profissao(juliana, psicologa).
profissao(rodrigo, contador).
profissao(beatriz, enfermeira).

habilidade(joao, matematica).
habilidade(joao, fisica).
habilidade(joao, informatica).
habilidade(maria, biologia).
habilidade(maria, anatomia).
habilidade(maria, cirurgia).
habilidade(carlos, oratoria).
habilidade(carlos, argumentacao).
habilidade(ana, pedagogia).
habilidade(ana, didatica).
habilidade(pedro, programacao).
habilidade(pedro, algoritmos).
habilidade(luisa, veterinaria).
habilidade(luisa, cirurgia_animal).
habilidade(fernando, desenho).
habilidade(fernando, arquitetura).
habilidade(juliana, psicologia_clinica).
habilidade(juliana, terapia).
habilidade(rodrigo, contabilidade).
habilidade(rodrigo, analise_financeira).
habilidade(beatriz, cuidados_basicos).
habilidade(beatriz, enfermagem).

% Regras
tem_habilidade(Pessoa, Habilidade) :-
    profissao(Pessoa, Prof),
    habilidade(Pessoa, Habilidade).

trabalha_com(Pessoa1, Pessoa2) :-
    profissao(Pessoa1, Prof1),
    profissao(Pessoa2, Prof2),
    Prof1 \= Prof2.

mesma_profissao(Pessoa1, Pessoa2) :-
    profissao(Pessoa1, Profissao),
    profissao(Pessoa2, Profissao).

sao_colegas_de_trabalho(Pessoa1, Pessoa2) :-
    profissao(Pessoa1, _),
    profissao(Pessoa2, _),
    Pessoa1 \= Pessoa2,
    trabalha_com(Pessoa1, Pessoa2).

sao_colegas_de_classe(Pessoa1, Pessoa2) :-
    profissao(Pessoa1, _),
    profissao(Pessoa2, _),
    Pessoa1 \= Pessoa2,
    mesma_profissao(Pessoa1, Pessoa2).
