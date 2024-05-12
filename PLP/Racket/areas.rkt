;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza 

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno: Lucas Nathã Monteiro Pimentel de Souza")
;;
;;
;; (define   (nomeFuncao   parametros)  definicao  )
;;
;; AREAS
;; ---------------------------------------------------
(define (area-circulo r) ;função para calcular a área do círculo
  (* 3.14 (* r r))         ) ; 3.14 * (r * r)

(define (areatriangulo b h) ;função para calcular a área do triângulo
  (/ (* b h) 2)) ;função para calcular a area do triângulo

(define (areadisco interno externo) ;função para calcular a área do disco
  (- (area-circulo externo)
     (area-circulo interno) ;chama a função area-circulo para saber o valor do circulo externo e interno e dps faz externo - interno
  )
)

;--------------------------------------------------------------

(display "Circulo de raio 21   AREA = ")
(area-circulo 21) ;passa o valor 21 para a variavel r na função area-circulo e irá retornar o valor da área

(display "Triangulo base=10, altura=15  AREA =   ")
(areatriangulo 10 15) ;passa os valores 10 como base e 15 como altura para a função areatriangulo e irá retornar a área desse triângulo

(display "Disco raio menor=12, raio maior=20  AREA = ")
(areadisco 12 20) ;passa o valor 12 para a variavel interno e 20 para a externo e retornará o valor da área desse disco

;----------------------------------------------------------
(newline)
(display "O programa calcula a área do circulo, triangulo e de um disco")
