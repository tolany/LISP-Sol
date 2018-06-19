; 1.15

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
   (if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0)))))

;; a. (sine 12.15), 12.15/(3^n) < 0.1 -> n = 5
;; b. (sine a) -> O(log_3_a)