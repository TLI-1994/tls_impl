#| (pick n lat) where n is 4 and lat is 
(lasagna spaghetti ravioli macaroni meatball) is
macaroni. |#
(load "o=.scm")
#| my implementation violates the first commandment. |#
; (define pick
;   (lambda (n lat)
;     (cond 
;       ((o= n 1) (car lat))
;       (else (pick (osub1 n) (cdr lat))))))

#| tls implentation honors the first commandment. |#
(define pick
  (lambda (n lat)
    (cond 
      ((zero? (osub1 n) (car lat))
      (else (pick (osub1 n) (cdr lat))))))) 
