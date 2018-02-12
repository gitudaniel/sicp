(load "sicp/smallest-divisor.scm")
(load "sicp/fast-prime.scm")

#|(define (timed-prime-test n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (runtime) start-time))
      #f))
(define (report-prime n elapsed-time)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline))
|#

(define (timed-prime-test n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (fast-prime? n 5)
      (report-prime n (- (runtime) start-time))
      #f))
(define (report-prime n elapsed-time)
  ;the newline and display here will only display prime numbers found
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline))

#| To display all numbers tested make the following changes
(define (timed-prime-test n)
  (newline)
  (display n)
  ...
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime n elapsed-time)
  (display " *** ")
  (display elapsed-time))
|#
