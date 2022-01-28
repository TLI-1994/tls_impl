#| It takes three arguments: the atoms new
and old , and a list of S-expressions. The function 
insertL* builds a list of S-expressions with new 
inserted to the left of every occurrence of old 
recursively. |#
(define insertL*
  (lambda (new old l)
    (cond 
      ((null? l) (quote ()))
      ((atom? (car l))
        (cond 
          ((eq? (car l) old) 
            (cons new 
              (cons old 
                (insertL* new old (cdr l)))))
          (else (cons (car l) (insertL* new old (cdr l))))))
      (else (cons (insertL* new old (car l))
              (insertL* new old (cdr l)))))))
