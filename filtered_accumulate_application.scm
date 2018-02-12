(load "sicp/filtered_accumulate.scm")
(load "sicp/smallest-divisor.scm")

(define (inc n) (+ n 1))

(define (identity x) x)

; Find the sum of the squares of prime numbers in an interval
(define (sum-of-prime-squares a b)
  (filtered-accumulate + 0 square a inc b prime?))

; Find the product of all positive integers less than n that are relatively
; prime to n (i.e. all positive integers i < n such that GCD(i, n) = 1)
(define (gcd m n)
  (cond ((< m n) (gcd n m))
	((= n 0) m)
	(else (gcd n (remainder m n)))))

(define (relative-prime? m n)
  (= (gcd m n) 1))

(define (product-of-relative-primes n)
  (define (filter x)
    (relative-prime? x n))
  (filtered-accumulate * 1 identity 1 inc n filter))
