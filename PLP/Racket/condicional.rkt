;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")
(newline)
(display "  Aluno: Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;Exercicios da lista

(define (computador preco)
  (cond
    ((<= preco 800) "Muito ruim")
    ((<= preco 1500) "Ruim")
    ((<= preco 3000) "Mediano")
    ((<= preco 4500) "Bom")
    ((<= preco 7000) "Muito bom")
    ((<= preco 10000) "Excelente")
    (else "Necessário apenas para uso específico")
  )
)

    
(newline)
(display "Computador de R$800,00 = ")
(computador 800)

(newline)
(display "Computador de R$1.500,00 = ")
(computador 1500)

(newline)
(display "Computador de R$3.000,00 = ")
(computador 3000)

(newline)
(display "Computador de R$4.500,00 = ")
(computador 4500)

(newline)
(display "Computador de R$7.000,00 = ")
(computador 7000)

(newline)
(display "Computador de R$10.000,00 = ")
(computador 10000)

(newline)
(display "Computador de R$15.000,00 = ")
(computador 15000)




(define (delta a b c)
  (+ (expt b 2) (* (* -4 a) c))
)

(define (x1 a b c delta)
  (display "x1 = ")
  ;(delta a b c)
  (/ (+ b (sqrt delta)) (* 2 a))
)

(define (x2 a b c delta)
  (display "x2 = ") (/ (- b (sqrt delta)) (* 2 a))
)

(newline)
(display "a = 25, b = -55, c = 10")
(newline)
(display "delta = ")
(delta 25 55 10)
(x1 25 55 10 (delta 25 55 10))
(x2 25 55 10 (delta 25 55 10))

(newline)
(newline)
;;
;;
;; CONDICIONAL   ( cond {[ ‹expr-test› ‹expr-eval›* ]}* )
;;---------------------------------------------

(define (taxa quantidade) 
     (cond 
              ((<= quantidade 1000)  0.040) ;se quantidade <= 1000 então a taxa é de 0.040
              ((<= quantidade 8000)  0.065) ;se quantidade > 1000 e <= que 8000 então a taxa é de 0.065
              ((<= quantidade 12000) 0.072) ;se quantidade > 8000 e <= que 12000 então a taxa é de 0.072
              (else 1)  ;se não for nenhuma das acimas, a taxa é de 1
              )
  ) 

;;---------------------------------------------

(newline)
(display "Taxa para R$4.000,00 = ")
(taxa 4000)

(newline)
(display "Taxa para R$9.350,00 = ")
(taxa 9350)

(newline)
(display "Taxa para R$15.500,00 = ")
(taxa 15500)

(newline)
(display "Utilizando o condicional switch")

