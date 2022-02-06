#| Determine whether two S-expressions are the same. |#
(source-directories '("." "../4.Numbers_Games/"))
(load "eqan?.scm")
#| my implementation |#
; (define oequal?
;   (lambda (s1 s2)
;     (cond 
;       ((and (atom? s1) (atom? s2)) (eqan? s1 s2))
;       ((or (atom? s1) (atom? s2)) #f)
;       ((and (null? s1) (null? s2)) #t)
;       (else
;         (and (oequal? (car s1) (car s2)) 
;           (oequal? (cdr s1) (cdr s2)))))))

#| tls implementation |#
; eqlist? copied here to prevent circular load.
(define eqlist?
  (lambda (l1 l2)
    (cond 
      ((and (null? l1) (null? l2)) #t)
      ((or (null? l1) (null? l2)) #f)
      (else 
        ; (car l1) and (car l2) are both S-expressions.
        ; (cdr l1) and (cdr l2) are both lists.
        (and (oequal? (car l1) (car l2)) 
          (eqlist? (cdr l1) (cdr l2)))))))

(define oequal?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
        (eqan? s1 s2))
      ((or (atom? s1) (atom? s2)) #f)
      ; Both s1 and s2 are lists.
      (else (eqlist? s1 s2)))))

