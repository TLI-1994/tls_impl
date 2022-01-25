(load "sub1.scm")

(define o>
  (lambda (n m)
    (cond 
    ((zero? n) #f)
    ((zero? m) #t)
    (else (o> (sub1 n) (sub1 m))))))
