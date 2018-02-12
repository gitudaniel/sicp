;(load "sicp/summation_abstraction.scm")
(load "sicp/summation_abstraction_linear.scm")

(define (another-simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (add-2h x) (+ x (* 2 h)))
  (* (/ h 3.0) (+ (f a)
		  (* 4.0 (sum f (+ a h) add-2h (- b h)))
		  (* 2.0 (sum f (add-2h a) add-2h (- b h)))
		  (f (+ a (* h n))))))