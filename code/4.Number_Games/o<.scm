(load "sub1.scm")

(define o<
  (lambda (n m)
    (cond 
      ((zero? m) #f)
      ((zero? n) #t)
      (else (o< (sub1 n) (sub1 m))))))
