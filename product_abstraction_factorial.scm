;(load "sicp/product_abstraction.scm")
;(load "sicp/product_abstraction_linear.scm")
(load "sicp/product_abstraction_linear_alt.scm")

(define (identity x) x)

(define (inc n) (+ n 1))

(define (factorial a b)
  (product identity a inc b))
