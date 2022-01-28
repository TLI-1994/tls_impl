#| rember* removes atom a from a list of S-expressions l
recursively. |#
(define rember*
  (lambda (a l)
    (cond 
      ((null? l) (quote ()))
      ((atom? (car l)) 
        (cond 
          ((eq? (car l) a) (rember* a (cdr l)))
          (else (cons (car l) (rember* a (cdr l))))))
      (else (cons (rember* a (car l)) (rember* a (cdr l)))))))
