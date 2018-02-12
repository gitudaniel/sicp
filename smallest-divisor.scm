(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (next test-divisor)))))
(define (next m)
  (if (= m 2) (+ m 1) (+ m 2)))
(define (divides? a b)
  (= (remainder b a) 0))

;Testing for primality
(define (prime? n)
  (if (= n 1) ; tells the procedure that 1 is not a prime number
      false
      (= n (smallest-divisor n)))) ;A number is prime if and only if n is its own smallest divisor.
