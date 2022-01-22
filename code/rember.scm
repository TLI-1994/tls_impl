#| It takes an atom and a lat as its arguments,
and makes a new lat with the first occurrence
of the atom in the old lat removed |#

#| complicated implementation |#
; (define rember
;   (lambda (a lat)
;     (cond
;       ((null? lat) (quote ()))
;       (else (cond
;               ((eq? (car lat) a) (cdr lat))
;               (else (cons (car lat)
;                       (rember a
;                         (cdr lat)))))))))

#| simplified implementation |#
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) a) (cdr lat))
      (else (cons (car lat) 
              (rember a (cdr lat))))))) 