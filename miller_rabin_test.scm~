(define (miller-rabin-expmod base exp m)
  (define (squaremod-with-check x)
    (define (check-nontrivial-sqrt x square)
      (if (and (= square 1)
	       (not (= x 1))
	       (not (= x (- m 1))))
	  0
	  square))
    (check-nontrivial-sqrt x (remainder (square x) m)))
  (cond ((= exp 0) 1)
	((even? exp) (squaremod-with-check
		      (miller-rabin-expmod base (/ exp 2) m)))
	(else
	 (remainder (* base (miller-rabin-expmod base (- exp 1) m))
		    m))))

(define (miller-rabin-test n)
  (define (try-it a)
    (define (check-it x)
      (and (not (= x 0)) (= x 1)))
    (check-it (miller-rabin-expmod a (- n 1) n)))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) "Prime") ; can true be changed to "prime"
	((miller-rabin-test n) (fast-prime? n (- times 1)))
	(else "Not prime"))) ; can false be changed to "not prime"

(define (prime? n)
  ; Perform the test a number of times
  ; 100 is our chosen arbitrary value
  (fast-prime? n 100))

(define (report-prime n)
  (define (report-result n result)
    (newline)
    (display n)
    (display ": ")
    (display result))
  (report-result n (prime? n)))


#| The method below requires prior knowledge of whether the number under test is prime or not.
It works well as a test for how the number should behave but what if prior knowledge was not had, it becomes very difficult to execute.
 
(define (report-prime n expected)
  (define (report-result n result expected)
    (newline)
    (display n)
    (display ": ")
    (display result)
    (display ": ")
    (display (if (eq? result expected) "OK" "FOOLED")))
  (report-result n (prime? n) expected))
|#
