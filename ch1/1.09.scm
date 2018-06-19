; 1.09

;recursive
(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))
; 9
;(+ a b)
;(inc (+ (dec 4) 5))
;(inc (+ 3 5))
;(inc (inc (+ (dec 3) 5)))
;(inc (inc (+ 2 5)))
;(inc (inc (inc (+ (dec 1) 5))))
;(inc (inc (inc (+ 0 5))))
; ... 

;iterative 
(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))
;9
