#| the value of (length lat) where lat is 
(hotdogs with mustard sauerkraut and pickles) is 6.|#

(load "oadd1.scm")

(define olength
  (lambda (lat)
    (cond 
      ((null? lat) 0)
      (else (oadd1 (olength (cdr lat)))))))
