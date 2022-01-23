(load "sub1.scm")

(define o-
  (lambda (n m)
    (cond 
      ((zero? m) n)
      (else (sub1 (o- n (sub1 m))))))) ; (sub1 m) is the natural recursion on m
