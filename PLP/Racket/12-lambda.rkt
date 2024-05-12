;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2024 
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")
(newline)
(display "  Sou o aluno(a): Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;
;;
;;  Expressoes LAMBDA
;; ---------------------------------------------------
;; Expressoes LAMBDA sao utilizados para criar novos procedimentos
;;    (lambda (var ....) expr1  expr2 ....)

;;------------ funcao Duas-vezes --------------

(define DuasVezes
  (lambda (f x)   ;; <-------  2 parametros formais : f x
    (f x x)       ;; <-------  definicao do corpo da funcao
  )
 )

;;------------ funcao com5 --------------

(define com5
  (lambda (operador x)
    (operador x 5)
  )
 )


;;------------ Polinomio P(x) = X^2 + 3X - 7 --------------

(define polinomio
  (lambda (x)                   ;<----- um parametro x
    (- (+ (* x x) (* 3 x)) 7)
  )
 )

;;-------- executando ... ----------------------------
;;----------------------------------------------------

(display "3+3 = ") ;faz a mesma operação 2x (nesse caso passamos a soma)
(DuasVezes + 3)

(display "3*3 = ") ;faz a mesma operação 2x (nesse caso passamos a multiplicação)
(DuasVezes * 3)

(display "3-3 = ") ;faz a mesma operação 2x (nesse caso passamos a subtração)
(DuasVezes - 3)

(newline)
(display "8+5 = ") ;função q utiliza sempre o 5 e faz alguma operação de acordo com oque passamos (nesse caso soma)
(com5 + 8)

(display "8*5 = ") ;função q utiliza sempre o 5 e faz alguma operação de acordo com oque passamos (nesse caso multiplicação)
(com5 * 8)

(display "8-5 = ") ;função q utiliza sempre o 5 e faz alguma operação de acordo com oque passamos (nesse caso subtração)
(com5 - 8)
(newline)

(display "P(x) = X^2 + 3X - 7   entao P(7) = ") ;calcula o polinômio utilizando x = 7
(polinomio 7)

(display "P(x) = X^2 + 3X - 7   entao P(1) = ") ;calcula o polinômio utilizando x = 1
(polinomio 1)

(display "P(x) = X^2 + 3X - 7   entao P(3) = ") ;calcula o polinômio utilizando x = 3
(polinomio 3)



