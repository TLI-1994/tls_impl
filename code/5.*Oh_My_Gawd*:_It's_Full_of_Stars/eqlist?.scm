#| A function that determines if two lists are equal. |#
(source-directories '("." "../4.Numbers_Games/"))
(load "eqan?.scm")

#| my implementation |#
; (define eqlist?
;   (lambda (l1 l2)
;     (cond 
;       ((null? l1) (null? l2))
;       ((atom? (car l1)) 
;         (cond 
;           ((null? l2) #f)
;           ((atom? (car l2)) 
;             (and (eqan? (car l1) (car l2)) 
;               (eqlist? (cdr l1) (cdr l2))))
;           (else #f)))
;       (else 
;         (cond 
;           ((null? l2) #f)
;           ((atom? (car l2)) #f)
;           (else 
;             (and (eqlist? (car l1) (car l2)) 
;               (eqlist? (cdr l1) (cdr l2)))))))))

#| tls implementation (no mutual recursion with oequal?) |#
; (define eqlist?
;   (lambda (l1 l2)
;     (cond
;       ((and (null? l1 ) (null? l2)) #t)
;       ((or (null? l1 ) (null? l2)) #f)
;       ((and (atom? (car l1)) (atom? (car l2)))
;         (and (eqan? (car l1) (car l2))
;           (eqlist? (cdr l1) (cdr l2))))
;       ((or (atom? (car l1)) (atom? (car l2))) #f)
;       (else
;         (and (eqlist? (car l1 ) (car l2))
;           (eqlist? (cdr l1 ) (cdr l2)))))))

; Notes:
; The tls implementation is superior. The case analysis 
; considers three kinds of situations: 
; 1. involving at least one of l1 and l2 is null
;     - if both are null, then #t
;     - else if one of them is null (the other cannot be 
;       null), then #f
; 2. involving at least one of (car l1) and (car l2) is atom
;     - if both are atom and (eqlist? (cdr l1) (cdr l2)) 
;       answers #t, then true
;     - else if one of them is atom (the other one cannot be 
;       atom), then #f
; 3. both l1 and l2 are list consed onto a list
;     - totally depends on both
;         (car l1) and (car l2) and 
;         (cdr l1) and (cdr l2)

#| tls implementation (mutual recursion with oequal?) |#
; oequal? copied here to prevent circular load.
(define oequal?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
        (eqan? s1 s2))
      ((or (atom? s1) (atom? s2)) #f)
      ; Both s1 and s2 are lists.
      (else (eqlist? s1 s2)))))

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

; Notes:
; The mutually recursive version is beautiful. It separates 
; the concerns:
;   - for oequal?, it needs to distinguish the input 
;     S-expressions between atom and list.
;   - for eqlist?, it needs to distinguish input list 
;     between empty and non-empty.
    