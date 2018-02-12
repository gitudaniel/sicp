(load "sicp/fermat-test.scm")
;the following procedure runs the Fermat test of primality a given number of times, as specified by a parameter
;its value is true if the test succeeds every time and false otherwise
(define (fast-prime? n times)
  (cond ((= times 0) true)
	((fermat-test n) (fast-prime? n (- times 1)))
	(else false)))
