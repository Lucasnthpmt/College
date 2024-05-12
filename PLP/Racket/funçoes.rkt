;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza  <===========  escreva seu nome aqui

;;;;;;;;;;;;;;;;   Escolha a linguagem R5RS
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno: Lucas Nathã Monteiro Pimentel de Souza ")
(newline)
;Exercicios da lista
(define cubo
  (lambda (x)
    (begin
      (newline)
      (display "O cubo de ")
      (display x)
      (display " é = ")
      (expt x 3)
    )))

(define raizquadrada
  (lambda (x)
    (begin
      (newline)
      (display "A raiz quadrada de ")
      (display x)
      (display "é = ")
      (sqrt x)
    )))
(cubo 5)
(raizquadrada 25)

(newline)
(newline)
(newline)
(newline)
(newline)

;;
;;
;; DEFINICAO DE FUNCOES-procedimentos  usando lambda
;;       (define  NomeFuncao  (lambda  ( parametros )  (definicao) )  ) 
;;---------------------------------------------------

;;--------------------------------------
;; Procedimento (lambda ParametrosFormais Corpo)
(define ADICIONA
      (lambda  (a  b)           ; parametros formais
        (+ a b ) ; a + b                ; corpo do procedimento ADICIONA
       )
)  
;;--------------------------------------
;;
;;
(define soma
  (lambda (x y) 
    (begin
      (newline)
      (display "A soma de ")
      (display x)
       (display " e ")
       (display y)
       (display " = ")
      (+ x y) ; x + y
     )
   )
)
;;---------------------------------------------
(define produto
  (lambda (x y) 
    (begin
      (newline)
      (display "O produto de ") (display x) (display " e ") (display y)
      (display " = ")
      (* x y) ; x * y
     )
   )
)
;;---------------------------------------------
(define divisao
  (lambda (x y) 
    (begin
      (newline)
      (display "A divisao ") (display x) (display "/") (display y)(display " = ")
      (/ x y) ;x / y
     )
   )
)
;;---------------------------------------------
(define diferenca
  (lambda (x y) 
    (begin
      (newline)
      (display "A diferenca ") (display x) (display "-") (display y)(display " = ")
      (- x y) ;x - y
     )
   )
)
;;---------------------------------------------
(define quadrado
     (lambda ( a )
       (newline)
      (display "O quadrado de ") (display a) (display " = ")
       ( * a a) ; a * a
       )
  )
;;---------------------------------------------

;;----------- Executando funcoes --------------

(ADICIONA 25 15) ;chama a função adiciona passando os valores a = 25 e b = 15
(ADICIONA 30 40) ;chama a função adiciona passando os valores a = 30 e b = 40

(soma 45 32) ;chama a função soma passando x = 45 e y = 32
(produto 21 15) ;chama a função produto passando x = 21 e y = 15
(divisao 420 7) ;chama a função produto passando x = 420 e y = 7
(diferenca 89 35) ;chama a função produto passando x = 89 e y = 35
(quadrado 09) ;chama a função produto passando a = 09
