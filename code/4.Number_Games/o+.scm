(load "add1.scm")
(load "sub1.scm")

(define o+
  (lambda (n m)
    (cond 
      ((zero? m) n)
      (else (add1 (o+ n (sub1 m))))))) ; (sub1 m) is the natural recursion on m
