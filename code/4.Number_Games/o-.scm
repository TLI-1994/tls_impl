(load "osub1.scm")

(define o-
  (lambda (n m)
    (cond 
      ((zero? m) n)
      (else (osub1 (o- n (osub1 m))))))) ; (osub1 m) is the natural recursion on m
