#| insertL inserts the atom new to the
left of the first occurrence of the atom old
in lat |#

#| my implementation |#
; (define insertL
;   (lambda (new old lat)
;     (cond
;       ((null? lat) (quote ()))
;       ((eq? (car lat) old) (cons new lat))
;       (else (cons (car lat) (insertL new old (cdr lat)))))))

#| tls implementation |#
(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) old) 
                (cons new lat))
              (else (cons (car lat)
                      (insertL new old
                        (cdr lat)))))))))
; Notes:
; Same as insertR
