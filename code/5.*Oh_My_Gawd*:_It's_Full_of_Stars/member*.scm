#| = atom a appears in the list of S-expressions l |#

#| my implementation |#
; (define member*
;   (lambda (a l)
;     (cond 
;       ((null? l) #f)
;       ((atom? (car l)) 
;         (cond 
;           ((eq? (car l) a) #t)
;           (else (member* a (cdr l)))))
;       (else (or (member* a (car l)) 
;               (member* a (cdr l)))))))

#| tls implementation |#
(define member*
  (lambda (a l)
    (cond
      ((null? l) #f)
      ((atom? (car l))
        (or (eq? (car l) a) 
          (member* a (cdr l)))) ; this line is more natural than my cond line
      (else (or (member* a (car l))
              (member* a (cdr l)))))))

; Notes: 
; The use of or is more natural and simplifies the code.
