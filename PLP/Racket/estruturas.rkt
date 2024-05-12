tr;; Introdução à Linguagem Scheme-Racket
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
; Ir no Menu:  
;   Language -> Choose Language -> How to Design Programs -> Advanced Student
;----------------------------------------------------------------------------
(define-struct pc (processador placadevideo))
(make-pc 'Ryzen 'Gtx)
(display "Processador = ") (pc-processador (make-pc 'Ryzen 'Gtx))
(display "Placa de vídeo = ") (pc-placadevideo (make-pc 'Ryzen 'Gtx)) (newline)

(define-struct celular (android mac))
(make-celular 'xiaomi 'iphone)
(display "Android = ") (celular-android (make-celular 'xiaomi 'iphone))
(display "Mac = ") (celular-mac (make-celular 'xiaomi 'iphone)) (newline)

(define-struct serhumano(superior inferior))
(make-serhumano 'braço 'perna)
(display "Superior = ") (serhumano-superior (make-serhumano 'braço 'perna))
(display "Inferior = ") (serhumano-inferior (make-serhumano 'braço 'perna)) (newline)


(define-struct entrada (nome cep fone)) ;define uma estrutura com 3 variaveis (nome, cep e fone)

(newline)  
(make-entrada 'AntonioLopes '05890-001 '606-7771) ;coloca o nome AntonioLopes na variavel nome, 05890-001 no cep e 606-7771 no fone. tudo isso na variavel make-entrada
(newline)
(display "Nome = " )
(entrada-nome (make-entrada 'AntonioLopes '05890-001 '606-7771)) ;imprime o nome
(display "CEP = " )
(entrada-cep (make-entrada 'AntonioLopes '05890-001 '606-7771)) ;imprime o cep
;;
(define abc (make-entrada 'AntonioLopes '05890-001 '606-7771))
(display "Fone = " )
(entrada-fone abc) ;imprime o fone
