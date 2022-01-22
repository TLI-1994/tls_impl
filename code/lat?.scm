#| lat ? looks at each S-expression in a list, in
turn, and asks if each S-expression is an
atom, until it runs out of S-expressions. If
it runs out without encountering a list, the
value is #t . If it finds a list, the value is
#f-false. |#
(load "atom?.scm")
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom ? (car l)) (lat? (cdr l)))
      (else #f))))