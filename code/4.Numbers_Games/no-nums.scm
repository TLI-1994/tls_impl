#| (no-nums lat) gives as a final value a lat
obtained by removing all the numbers from
the lat. |#
(define no-nums
  (lambda (lat)
    (cond 
      ((null? lat) (quote ()))
      (else 
        (cond 
          ((number? (car lat)) (no-nums (cdr lat)))
          (else (cons (car lat) (no-nums (cdr lat)))))))))
