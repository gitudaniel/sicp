(load "sicp/accumulate.scm")

(define (inc n) (+ n 1))

(define (identity x) x)

; summation of cubes
(define (cube n) (* n n n))
(define (sum-cubes a b)
  (accumulate + 0 cube a inc b))

; factorial of numbers
(define (factorial a b)
  (accumulate * 1 identity a inc b))

; pi-sum
(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (* 8 (accumulate + 0 pi-term a pi-next b)))
