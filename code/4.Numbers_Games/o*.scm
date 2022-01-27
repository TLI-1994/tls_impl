(load "o+.scm")

(define o*
  (lambda (n m)
    (cond 
      ((zero? m) 0)
      (else (o+ n (o* n (osub1 m)))))))
