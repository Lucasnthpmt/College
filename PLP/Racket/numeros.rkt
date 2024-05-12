;; Introdução à Linguagem Racket (Scheme)
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024
;; Aluno: Lucas Nathã Monteiro Pimentel de Souza <===========  escreva seu nome aqui
;;
;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
;;

; ------------------------------------------------
(display "    UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "    Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "    Aluno: Lucas Nathã Monteiro Pimentel de Souza")
(newline)
;;

(define (kesimo x)
  (cond
    ((even? x) (* x (/ x 2)))
    ((odd? x) (+ 1 (* x (/ (- x 1) 2))))))

(display "O 2-ésimo é = ")
(kesimo 2)
(display "O 7-ésimo é = ")
(kesimo 10)
