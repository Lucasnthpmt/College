;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza <===========  escreva seu nome aqui 

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno: Lucas Nathã Monteiro Pimentel de Souza")
(newline)
; Expressoes pedidas no exercicio 5.2
(let ((p 2)) ; p = 2
      (* p 30) ;2 * 30 = 60
)

(let ((l 22)) ; l = 22
      (+ 3 (/ l 2))) ; 3 + (22 / 2) = 14

;;
;;
;; Variáveis e Expressoes LET
;; ---------------------------------------------------
(define y 5)		             ; para y = 5
(define m 7)                         ; para m = 7
(define z (+ m 6))	             ; para z = m + 6      z = 7 + 6 => z = 13
(define Pi 3.141516)
(define k (+ z (- m y)))             ; para k = z + (m - y) => k = 13 + (7 - 5) => k = 15

(define (quadrado x)            ; (define   (nomeFuncao   parametro)  definicao  )
    (* x x)  )


(define (entre7e18? n)
  (and (< 7 n) (< n 18) )               ;; AND logico
 )
;; ---------------------------------------------------

(newline)
(display "O numero 8 esta' entre 7 e 18? ")
(entre7e18? 8)

(newline)
(display "O numero 37 esta' entre 7 e 18? ")
(entre7e18? 37)

(newline)
(display "Escreva qualquer variavel definida acima ... <var> <ENTER>   x m z Pi")
(newline)
(newline)
(newline)
(newline)
(newline)
;; ---------------------------------------------------
; Expressao let:    (let ((var1 valor) ...) expr1  expr2 .....)
(display "let é definir o valor de uma variável")
(newline)
(newline)
(display "x = 24, x + 6 = 30")
(newline)
(let ((x 24)) ;x = 24
  (+ x 6)) ;24 + 6 = 30

;;;
(newline)
(display "a = 5 e b = 8, 3 + (b * a) = 43")
(newline)
(let ( (a 5) (b 8)) ;a = 5 e b = 8
  (+ 3 (* a b))) ; 3 + (8 * 5) = 43

;;;
(newline)
(display "op1 = + e op2 = * e x = 5, 3 + (4 * x) = 23")
(newline)
(let ( (op1 +) ;op1 = +
       (op2 *) ;op2 = *
       (x 5) ;x = 5
     )
  (op1 3 (op2 4 x)) ; 3 + (4 * 5)
)

(newline)
(newline)
(newline)
(newline)
(display "O quadrado de 16 : ")(quadrado 16)
