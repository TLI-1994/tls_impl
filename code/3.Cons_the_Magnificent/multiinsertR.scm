#| It takes three arguments: the atoms new
and old , and a lat. The function multiinsertR
builds a lat with new inserted to the right
of every occurrence of old. |# 
(define multiinsertR
  (lambda (new old lat) 
      (cond 
        ((null? lat) (quote ()))
        (else 
          (cond 
            ((eq? (car lat) old) 
              (cons old (cons new 
                          (multiinsertR new old 
                            (cdr lat))))) 
            (else (cons (car lat) 
                          (multiinsertR new old 
                            (cdr lat))))))))) 
