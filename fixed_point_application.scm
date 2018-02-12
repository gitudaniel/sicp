(load "sicp/fixed_point.scm")

; Approximate the fixed point of the cosine function
(fixed-point cos 1.0)

; Find the solution to: y = sin y + cos y
(fixed-point (lambda (y) (+ (sin y) (cos y)))
	     1.0)
