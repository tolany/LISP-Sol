;; 1.07 

(define (square x) (* x x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

; for small numbers,
(good-enough? 0.000002 0.00000000000008)
; #t

; for large numbers,
(define (sqrt x)
    (sqrt-iter 1.0 0 x))
; never return true 
; b/c not accurate enough for their difference to ever fall below the tolerance value of 0.001

(define (sqrt-iter guess last-guess x)
    (if (good-enough? guess last-guess x)
        guess
        (sqrt-iter (improve guess x)
                    guess
                    x)))

(define (good-enough? guess last-guess x)
    (< (abs (- guess last-guess)) (/ guess 100000)))

