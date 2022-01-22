#| (atom? s) is just another way to
ask "Is s is an atom? |#
(define atom?
    (lambda (x) 
        (and (not (pair? x)) (not (null? x))))) 