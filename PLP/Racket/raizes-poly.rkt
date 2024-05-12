;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024 
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
;;
  ;; define a linguagem default ===> Habilite Advanced Student
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno(a): Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;;
;;
;;  Aplicações:  raizes do polinomio Ax^2 + Bx + C = 0
;; ---------------------------------------------------

(define (poly2grau a b c)
  (cond 
    [(= a 0) "degenerada" ]
    [(< (* b b) 
        (* 4 a c)) 
     "Nenhuma Ou Complexa" ]
    [(= (* b b) 
        (* 4 a c)) 
     (/ (- b) (* 2 a))]
    [(> (* b b) 
        (* 4 a c)) 
     (list (/ (+ (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)) 
           (/ (- (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)))])) 

;;--------------------------------------
;Exercicio da lista 16.1
(display "X^2 + X + 1 = 0 , Raizes = ")
(poly2grau 1 1 1)
(newline)
(display "2X^2 + X + 3 = 0 , Raizes = ")
(poly2grau 2 1 3)
(newline)
(display "X^2 +2 = 0 , Raizes = ")
(poly2grau 1 0 2) 
(newline)
(display "2X^2 +4X +2 = 0 , Raizes = ")
(poly2grau 2 4 2)
(newline)
(display "X + 5 = 0 , Raizes = ")
(poly2grau 0 1 5)






(newline)
(newline)
;; EXEMPLOS 
(display "X^2 + 2X + 1 = 0 , Raizes = ")
(poly2grau 1 2 1) ;passa para a função calcular usando a formula de bhaskara (a = 1, b = 2 e c = 1)
(display "deveria ser -1") 
(newline)

(display "3X^2 + 4X + 1 = 0 , Raizes = ")
(poly2grau 3 4 1) ;passa para a função calcular usando a formula de bhaskara (a = 3, b = 4 e c = 1)
(display "deveria ser -1/3 -1")
(newline)

(newline)
(display "2X^2 + 4X + 3 = 0 , Raizes = ")
(poly2grau 2 4 3) ;passa para a função calcular usando a formula de bhaskara (a = 2, b = 4 e c = 3)
(display "deveria ser Nenhuma")
(newline)

(newline)
(display "X^2 -1 = 0 , Raizes = ")
(poly2grau 1 0 -1) ;passa para a função calcular usando a formula de bhaskara (a = 1, b = 0 e c = -1)
(display "deveria ser 1 e -1")
(newline)

(newline)
(display "2X^2 +4X +2 = 0 , Raizes = ")
(poly2grau 2 4 2) ;passa para a função calcular usando a formula de bhaskara (a = 2, b = 4 e c = 2)
(display "deveria ser -1")
(newline)

(newline)
(display "X + 1 = 0 , Raizes = ")
(poly2grau 0 1 1) ;passa para a função calcular usando a formula de bhaskara (a = 0, b = 1 e c = 1)
(display "deveria ser: Degenerada")
(newline)
