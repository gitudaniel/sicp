(load "sicp/fast-expt.scm")

#|(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (remainder (* base (expmod base (- exp 1) m))
		    m))))
;The above procedure computes the exponential of a number modulo another number
|#

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a)) ;test that a^n % n = a
  (try-it (+ 1 (random (- n 1))))) ;the +1 makes n-1 inclusive

(define (even? n)
  (= (remainder n 2) 0))
