#| It takes three arguments: the atoms new
and old , and a list of S-expressions. The function 
insertR* builds a list of S-expressions with new 
inserted to the right of every occurrence of old 
recursively. |#
(define insertR*
  (lambda (new old l)
    (cond 
      ((null? l) (quote ()))
      ((atom? (car l)) 
        (cond 
          ((eq? (car l) old) 
            (cons old 
              (cons new 
                (insertR* new old (cdr l)))))
          (else (cons (car l) (insertR* new old (cdr l))))))
      (else (cons (insertR* new old (car l))
              (insertR* new old (cdr l)))))))
