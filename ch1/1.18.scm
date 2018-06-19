; 1.18

(define (fast-* b n)
  (fast-*-iter b n 0))
 
(define (fast-*-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-*-iter (double b) (halve n) a))
        (else (fast-*-iter b (- n 1) (+ a b)))))