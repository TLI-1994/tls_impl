#| (subst new old lat) replaces the first
occurrence of old in the lat with new |#
(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) old)
                (cons new (cdr lat)))
              (else (cons (car lat)
                (subst new old
                  (cdr lat)))))))))
