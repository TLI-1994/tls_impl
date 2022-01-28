#| It takes three arguments: the atoms new
and old , and a lat. The function insertR
builds a lat with new inserted to the right
of the first occurrence of old. |#

#| my implementation |#
; (define insertR
;  (lambda (new old lat)
;   (cond 
;     ((null? lat) (quote ()))
;     ((eq? (car lat) old) 
;       (cons old (cons new (cdr lat))))
;     (else (cons (car lat) 
;             (insertR new old (cdr lat)))))))

#| tls implementation |#
(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) old)
                (cons old
                  (cons new (cdr lat))))
              (else (cons (car lat)
                      (insertR new old
                        (cdr lat)))))))))

; Notes: 
; No need to always simplify the embedded condationals. 
; Explicit scoping might be clearer when the logic is 
; complicated. 
