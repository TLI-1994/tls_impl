#| The function leftmost finds the leftmost
atom in a non-empty list of S-expressions
that does not contain the empty list. |#
(define leftmost
  (lambda (l)
    (cond 
      ((atom? (car l)) (car l))
      (else (leftmost (car l))))))
