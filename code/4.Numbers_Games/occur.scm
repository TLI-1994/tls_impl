#| occur counts the number of times an atom a appears 
in a lat. |#

#| my implementation uses equan? instead of eq? |#
; (load "eqan?.scm")
; (load "oadd1.scm")
; (define occur
;   (lambda (a lat)
;     (cond 
;       ((null? lat) 0)
;       (else 
;         (cond 
;           ((eqan? (car lat) a) (oadd1 (occur a (cdr lat))))
;           (else (occur a (cdr lat)))))))) 

#| tls implementation simply uses eq? but eqan? is more
general. |#
(define occur
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      (else
        (cond
          ((eq? (car lat) a) (add1 (occur a (cdr lat))))
          (else (occur a (cdr lat))))))))
