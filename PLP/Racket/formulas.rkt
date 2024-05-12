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

;;Exercicio da lista

(define (fac x)
  (let loop ((x x) (acc 1))
    (if (zero? x)
        acc
        (loop (sub1 x) (* x acc)))))

(newline)
(display "Factorial de 5 (segunda forma) = ")
(fac 5)


(newline)
;;
;;Algumas formulas conhecidas


;;------------------------------------
;; Formula de Pitagoras
(define (pitagoras a b)
  (+ (* a a) (* b b)) ;a^2 + b^2
)

;;------------------------------------
;; Aproximacao do numero Pi
(define (aprox-pi N)
  (if (zero? N) 
      4 ;se N = 0 ent só retorna 4
      (+ (* 4 (/ (expt -1 N) (+ (* 2 N) 1))) ;se N diferente de 0 ent calcula utilizando essa fórmula
	 (aprox-pi (- N 1)))
  )
)

;;----------------------------------------
;; factorial de um numero inteiro N
(define (factorial N)
  (if (zero? N)
      1
      (* N (factorial (- N 1))) ;função recursiva até chegar no fatorial de 1
  )
)

 
(newline)
(display "Pitagoras de 3 e 4 = ")
(pitagoras 3 4)

(newline)
(display "Aproximando Pi com 4 = ")
(aprox-pi 4)

(newline)
(display "Aproximando Pi com 10 = ")
(aprox-pi 10)

(newline)
(display "Factorial de 5 = ")
(factorial 5)
(newline)
;(display "Fazer outro teste sobre Pitagoras e outro sobre Fatorial")
;(newline)
(display "Testando algumas formulas conhecidas como fatorial, pitagoras e aproximação de pi")
