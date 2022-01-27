(load "osub1.scm")

(define o<
  (lambda (n m)
    (cond 
      ((zero? m) #f)
      ((zero? n) #t)
      (else (o< (osub1 n) (osub1 m))))))
