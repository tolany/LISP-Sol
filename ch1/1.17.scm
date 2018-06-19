; 1.17

(define (double n) (+ n n))
(define (halve n) (/ n 2))
 
(define (fast-* b n)
  (cond ((= n 0) 0)
        ((even? n) (double (fast-* b (halve n))))
        (else (+ b (fast-* b (- n 1))))))