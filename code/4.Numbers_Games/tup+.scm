(load "o+.scm")

#| This version does not support tup1 and tup2 of
different length. |#
; (define tup+
;   (lambda (tup1 tup2)
;     (cond 
;       ((and (null? tup1) (null? tup2)) (quote ()))
;       (else (cons (o+ (car tup1) (car tup2)) 
;               (tup+ (cdr tup1) (cdr tup2)))))))

#| This version does support tup1 and tup2 of different 
length, but it is verbose. |#
; (define tup+
;   (lambda (tup1 tup2)
;     (cond 
;       ((and (null? tup1) (null? tup2)) (quote ()))
;       ((null? tup1) tup2)
;       ((null? tup2) tup1)
;       (else (cons (o+ (car tup1) (car tup2)) 
;               (tup+ (cdr tup1) (cdr tup2)))))))

#| This is a simpler version that still supports tup1
and tup2 of different length |#
(define tup+
  (lambda (tup1 tup2)
    (cond 
      ((null? tup1) tup2)
      ((null? tup2) tup1)
      (else (cons (o+ (car tup1) (car tup2)) 
              (tup+ (cdr tup1) (cdr tup2)))))))
