#| eqan? is true if its two arguments (a1 and a2) 
are the same atom. |#
(load "o=.scm")

(define eqan?
  (lambda (a1 a2)
    (cond 
      ((and (number? a1) (number? a2)) (o= a1 a2))
      ((or (number? a1) (number? a2)) #f)
      (else (eq? a1 a2)))))

; Notes:
; All functions written using eq? can be generalized by 
; replacing eq? by eqan? except for eqan? itself.
