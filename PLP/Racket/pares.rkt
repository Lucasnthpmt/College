;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro), 2024")
(newline)
(display "  Aluno: Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;EXERCICIOS DA LISTA
(display "Exercicios da lista")
(newline)

(define k (cons 72 93))
(define j (cons 2 11))

(newline)
(display "O par k = ")
k

(newline)
(display "O par j = ")
j

(newline)
(display "O primeiro elemento do par k = ")   
(car k)

(newline)
(display "O segundo elemento do par k = ")
(cdr k)

(newline)
(display "O primeiro elemento do par j = ")   
(car j)

(newline)
(display "O segundo elemento do par j = ")
(cdr j)

(newline)
(newline)
;;
;;
;; PARES CONSTANTES
;; ---------------------------------------------------

(define x (cons 7 9)) ;pares constantes da variavel x é 7 e 9
(define y (cons 'a 4)) ;pares constantes da variavel y é 'a e 4
(define z (cons x y))    ;   (  (7 9) ('a 4) ) pares constantes da variavel z é (7 9) e ('a 4)

(define a (cons 5 6)) ;pares constantes da variavel a é 5 e 6
(define b (cons 6 5)) ;pares constantes da variavel b é 6 e 5

(define a2 (cons a 6)) ;pares constantes da variavel a2 é (5 e 6) e 9
(define b2 (cons 6 b)) ;pares constantes da variavel b2 é 6 e (6 e 5)

(define a3 (cons a2 4)) ;pares constantes da variavel a3 é ((5 e 6) e 9) e 9
(define b3 (cons 4 b2)) ;pares constantes da variavel b3 é 4 e (6 e (6 e 5))

(define a4 (cons a3 8)) ;pares constantes da variavel a4 é (((5 e 6) e 9) 9) e 8
(define b4 (cons 8 b3)) ;pares constantes da variavel b4 é 8 e (4 e (6 e (6 e 5))



;; ---------------------------------------------------
(newline)
(display "O par x = ")
x

(newline)
(display "O par y = ")
y

(newline)
(display "O par z = (x y) = ")
z



(newline)
(display "O par a4 = ")
a4

(newline)
(display "O par b4 = ")
b4
;; ----------------Primeiro e resto ---------------------
(newline)
(display "O primeiro elemento do par x = ")   
(car x)                 ;; primeiro

(newline)
(display "O segundo elemento do par x = ")
(cdr x)                 ;; resto
