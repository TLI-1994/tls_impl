#| (subst2 new o1 o2 lat)
replaces either the first occurrence of o1 or
the first occurrence of o2 by new |#

#| my implementation |#
; (define subst2
;   (lambda (new o1 o2 lat)
;     (cond 
;       ((null? lat) (quote ()))
;       (else (cond 
;               ((eq? (car lat) o1) (cons new (cdr lat)))
;               (else (cond 
;                       ((eq? (car lat) o2) 
;                         (cons new (cdr lat)))
;                       (else (cons (car lat) 
;                               (subst2 new o1 o2 
;                                 (cdr lat)))))))))))

#| tls implementation |#
(define subst2
  (lambda (new o1 o2 lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((or (eq? ( car lat) o1) (eq? ( car lat) o2))
                (cons new ( cdr lat)))
              (else (cons (car lat)
                      (subst2 new o1 o2
                        (cdr lat)))))))))

; Notes:
; Its a nice example of how to use or to simplyfy things. 
