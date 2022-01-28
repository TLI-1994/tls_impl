#| (subst* new old l) replaces every occurrence of old 
in l with new recursively. |#
(define subst*
  (lambda (new old l)
    (cond 
      ((null? l) (quote ()))
      ((atom? (car l)) 
        (cond 
          ((eq? (car l) old) 
            (cons new (subst* new old (cdr l))))
          (else (cons (car l) (subst* new old (cdr l))))))
      (else (cons (subst* new old (car l))
              (subst* new old (cdr l)))))))
