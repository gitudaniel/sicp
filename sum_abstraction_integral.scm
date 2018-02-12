(load "sicp/summation_abstraction.scm")

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
; applied irl an example would be (integral cube 0 1 0.01)
; (integral cube 0 1 0.01) evaluates approximately to 0.25
; this means that the exact value of the integral of cube between 0 and 1 is 1/4

#| integral definition using lambdas
(define (integral f a b dx)
  (* (sum f
	  (+ a (/ dx 2.0))
	  (lambda (x) (+ x dx))
	  b)
     dx))
|#
