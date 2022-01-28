#| occur* counts the number of times an atom a appears 
in a list of S-expressions recursively. |#
(define occur*
  (lambda (a l)
    (cond 
      ((null? l) 0)
      ((atom? (car l)) 
        (cond 
          ((eq? (car l) a) (add1 (occur* a (cdr l))))
          (else (occur* a (cdr l))))) 
      (else (+ (occur* a (car l)) (occur* a (cdr l)))))))
