;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;;  2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "Aluno(a): Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;Exercicio da lista 15.3
(define (map1 a)
  (- (+ (* a a) (* 3 a)) 9)
)
(newline)
(display "Mapeamento de 20 = ") (map1 20)
(display "Mapeamento de 30 = ") (map1 30)
(display "Mapeamento de 40 = ") (map1 40)
(display "Mapeamento de 50 = ") (map1 50)
(newline)


;;
;; Mapeamentos
; ------------------------------------------------

(define quadrado
  (lambda ( x ) (* x x)
  )
)  
;;;;
(define dobro
  (lambda (y) (* 2 y)
  )
)  
;;;;
(define proximo
  (lambda ( x ) (+ x 1)
  )
)  

;;
;;

(define Lista (list  9 49 81 37 83))
(display "Lista:  ") Lista
(display "Raiz Lista:  ") (map sqrt Lista) ;faz a raiz quadrada de todos os elementos da lista
;;
;;
(newline)
(define dados '(11 6 35 51))
(newline)
(display "Dados:  ") dados
(newline)
;;mapeamentos 
(display "Mapeamentos: Dados-Proximo  ") (newline)
(map proximo dados) ;vai pegar a lista dados e todos os elementos que tem nela serão somados +1

(display "Mapeamentos: Dados-Quadrado  ") (newline)
(map quadrado dados) ;vai pegar a lista dados e todos os elementos que tem nela serão elevados ao quadrado

(display "Mapeamentos: Dados-Dobro  ") (newline)
(map dobro dados) ;vai pegar a lista dados e todos os elementos que tem nela serão multiplicados por 2


