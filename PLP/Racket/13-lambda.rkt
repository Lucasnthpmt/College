;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024 
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "Sou o aluno(a): Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;Exercicio da lista 13.2
(define abcd
  (lambda (n)
    (let f ((i 2))
      (cond
        ((>= i n) '())
        ((integer? (/ n i))
         (cons i (f (+ i 1))))
        (else (f (+ i 1)))))))

(newline)
(newline)
(display "define uma função lambda e define uma função f com parametro i = 2, e logo em seguida chama uma condicional testando se i >= n, se isso for verdade retorna uma lista vazia")
(newline)
(display "se a condição i >= n for falsa ele verifica se n dividido por i da resto 0 e caso não dê, ele chama a função f dnv adicionando +1 na variável i")

(newline)
(newline)
;;Exercicio da lista 13.1
(newline)
(define (prestacao val taxa tempo)
  (+ val (* (/ (* val taxa) 100) tempo))
)

(display "valor = 1000, taxa = 10%, tempo = 2 meses => ")
(prestacao 1000 10 2)

(display "valor = 1700, taxa = 35%, tempo = 8 meses => ")
(prestacao 1700 35 8)


;;
;;
;;  Expressoes LAMBDA e Recursão
;; ---------------------------------------------------
;; Expressoes LAMBDA sao utilizados para criar novos procedimentos
;;    (lambda (var ....) expr1  expr2 ....)


;; ------------- tamanho de uma lista ----------------
(define comprimento
  (lambda (lista)
    (if (null? lista)
        0
        (+ (comprimento (cdr lista)) 1)
        )
    )
  )
;;--------------- remove um elemento de uma lista -----
(define remove
  (lambda (x lista)
    (cond
      ((null? lista) '())
      ((eqv? (car lista) x) (remove x (cdr lista)))
      (else (cons (car lista) (remove x (cdr lista))))
     )
    )
  )


;;---------------------------------------------------
(define inverso
  (lambda (n)
    (if (and (number? n) (not (= n 0)))
        (/ 1 n)
        "Nao e' um numero"
     )
    )
  )



;; -------  Executando .....
;;--------------------------------------
;;
(define a (list 0 2 4 6 8 6 7 8 11 5 13 15))
(newline)
(display "lista: ")  a ;mostra a lista a
 
 (display "tamanho da lista: ") ;chama a função que calcula o comprimento passando a lista "a" como parâmentro
 (comprimento a)
 
 (display "Removendo um elemento (o 8): ") ;chama a função para remover o valor 8 da lista "a"
 (remove 8 a)
 
 (display "Inverso de 71 = ") ;chama a função inverso, para inverter o valor, se o valor é 71 ele volta 1/71
 (inverso 71)

