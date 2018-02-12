(load "sicp/summation_abstraction.scm")

; Summation of cubes
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (define (cube m) (* m m m))
  (sum cube a inc b))

; Summation of numbers
(define (identity x) x)
(define (sum-numbers a b)
  (sum identity a inc b))

; pi-sum (see SICP page 62&63 for context)
(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))
; Using this procedure we can compute an approximation to pi in the form of
; (* 8 (pi-sum 1 1000))
; This comes from the fact that pi-sum converges to pi/8 (very slowly) so picking a large range and multiplying by 8 should give you pi

#| pi-sum definition using lambdas
(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
       a
       (lambda (x) (+ x 4))
       b))
|#
