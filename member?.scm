#| member? takes two arguments: an atom and a lat. 
It returns #t if the atom is one of the atoms of 
the lat. It returns #f if the atom is not one of 
the atoms of the lat. |#
(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f )
      (else (or (eq? (car lat) a)
              (member? a (cdr lat)))))))