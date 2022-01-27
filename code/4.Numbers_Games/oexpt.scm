(load "o=.scm")
(load "o*.scm")

(define oexpt
  (lambda (n m)
    (cond 
      ((o= m 0) 1)
      (else (o* n (oexpt n (osub1 m)))))))
