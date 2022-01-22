#| The function firsts takes one argument, a
list, which is either a null list or contains
only non-empty lists. It builds another list
composed of the first S-expression of each
internal list. |#
(define firsts
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      (else (cons (car (car l)) 
              (firsts (cdr l))))))) 