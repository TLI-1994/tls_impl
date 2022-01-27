#| (rempick n lat) where n is 3 and lat is 
(hotdogs with hot mustard) is (hotdogs with mustard).|#
(load "osub1.scm")

#| implementation honoring the first commandment |#
; (define rempick
;   (lambda (n lat)
;     (cond 
;       ((zero? (osub1 n)) (cdr lat))
;       (else (cons (car lat) 
;               (rempick (osub1 n) (cdr lat)))))))

#| implement with one? |#
(load "one?.scm")
(define rempick
  (lambda (n lat)
    (cond 
      ((one? n) (cdr lat))
      (else (cons (car lat)
              (rempick (osub1 n) (cdr lat)))))))
