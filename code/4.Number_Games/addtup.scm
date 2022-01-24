(load "o+.scm")

(define addtup
  (lambda (tup)
    (cond 
      ((null? tup) 0)
      (else (o+ (car tup) (addtup (cdr tup)))))))
