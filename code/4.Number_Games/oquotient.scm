(load "add1.scm")
(load "o<.scm")
(load "o-.scm")

(define oquotient
  (lambda (n m)
    (cond 
      ((o< n m) 0)
      (else (add1 (oquotient (o- n m) m))))))
