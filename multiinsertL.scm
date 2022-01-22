#| It takes three arguments: the atoms new
and old , and a lat. The function multiinsertR
builds a lat with new inserted to the left
of every occurrence of old. |# 
(define multiinsertL
  (lambda (new old lat)
    (cond 
      ((null? lat) (quote ()))
      (else 
        (cond 
          ((eq? (car lat) old) 
            (cons new 
              (cons old 
                (multiinsertL new old 
                  (cdr lat)))))
          (else (cons (car lat) 
                  (multiinsertL new old 
                    (cdr lat))))))))) 