#| (subst new old lat) replaces every
occurrence of old in the lat with new |#
(define multisubst
  (lambda (new old lat)
    (cond 
      ((null? lat) (quote ()))
      (else (cond 
              ((eq? (car lat) old) 
                (cons new 
                  (multisubst new old 
                    (cdr lat))))
              (else (cons (car lat) 
                      (multisubst new old 
                        (cdr lat)))))))))
