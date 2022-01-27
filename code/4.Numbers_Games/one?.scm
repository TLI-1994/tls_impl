(load "o=.scm")
(define one?
  (lambda (n)
    (o= n 1)))

; Notes:
; The following two implementations are also from the book:

; (define one?
;   (lambda (n)
;     (cond
;       ((zero? n) #f )
;       (else (zero? (sub1 n))))))
; This implementation tries to honor the first commandment,
; but the first commandment must be honored only when 
; recurring. There is no recurring in this implementation.

; (define one?
;   (lambda (n)
;     (cond
;       (else (= n 1)))))
; This implementation highlights the fact that else is 
; indeed a question to which the answer is always true, 
; although there is no need to use cond.
