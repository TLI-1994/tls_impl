(load "osub1.scm")

(define o>
  (lambda (n m)
    (cond 
    ((zero? n) #f)
    ((zero? m) #t)
    (else (o> (osub1 n) (osub1 m))))))
