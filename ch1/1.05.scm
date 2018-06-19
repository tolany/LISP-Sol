;; 1.05

((define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

;;; (test 0 (p)) : applicative order evaluation(인자 먼저 계산법) -> infinite loop 
;;; (test 0 (p)) : normal order evaluation -> 0 
;;; scheme -> 인자먼저계산법
