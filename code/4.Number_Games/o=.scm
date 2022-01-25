(load "o>.scm")
(load "o<.scm")

#| This version makes no use of o> and o< |# 
; (define o=
;   (lambda (n m)
;     (cond 
;       ((zero? m) (zero? n))
;       ((zero? n) #f)
;       (else (o= (sub1 n) (sub1 m))))))

#| This version makes good use of o> and o< |#
(define o=
  (lambda (n m)
    (cond 
      ((o> n m) #f)
      ((o< n m) #f)
      (else #t))))
