(load "sicp/accumulate_linear.scm")

(define (inc n) (+ n 1))

(define (identity x) x)

(define (cube x) (* x x x))

; sum of numbers
(define (sum-of-numbers a b)
  (accumulate + 0 identity a inc b))

; sum of cubes
(define (sum-of-cubes a b)
  (accumulate + 0 cube a inc b))

; factorial
(define (factoria a b)
  (accumulate * 1 identity a inc b))
