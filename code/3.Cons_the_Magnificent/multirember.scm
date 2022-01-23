#| (multirember a lat) gives
as its final value the lat with all occurrences
of a removed |#
(define multirember
  (lambda (a lat)
    (cond 
      ((null? lat) (quote ()))
      (else (cond 
              ((eq? (car lat) a) 
                (multirember a (cdr lat))) 
              (else (cons (car lat) 
                      (multirember a (cdr lat)))))))))
