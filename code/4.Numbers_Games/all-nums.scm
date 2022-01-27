#| all-nums extracts a tup from a lat using all 
the numbers in the lat. |#
(define all-nums
  (lambda (lat)
    (cond 
      ((null? lat) (quote ()))
      (else 
        (cond 
          ((number? (car lat)) (cons (car lat) 
                                (all-nums (cdr lat))))
          (else (all-nums (cdr lat))))))))
