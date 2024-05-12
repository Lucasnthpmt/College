;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024 
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno(a): Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;
(display "Escreva o nome e a idade (separados por espaços) : ")
(newline)
(define nome1 (read))
(define idade1 (read))
(display "Escreva o nome e a idade da segunda pessoa (separados por espaços) : ")
(define nome2 (read))
(define idade2 (read))

(display "Nome da primeira pessoa = ") nome1
(display "Idade da primeira pessoa = ") idade1
(newline)
(display "Nome da segunda pessoa = ") nome2
(display "Idade da segunda pessoa = ") idade2







