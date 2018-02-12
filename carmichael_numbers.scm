(define (expmod base exp n)
  (cond ((= exp 0) 1)
	((even? exp) (remainder (square (expmod base (/ exp 2) n)) n))
	(else (remainder (* base (expmod base (- exp 1) n)) n))))
(define (congruent n)
  (define (try-it? a)
    (= (expmod a n n) a))
  (try-it? (+ 1 (random (- n 1)))))
(define (max-retries n times)
  (cond ((= times 0) "Yes it does fool")
	((congruent n) (max-retries n (- times 1)))
	(else "You don't fool me")))



#|
(define (expmod base exp n)
  (cond ((= exp 0) 1)
	((even? n) (remainder (square (expmod base (/ exp 2) n)) n))
	(else (remainder (* base (expmod base (- exp 1) n)) n)))
If you notice the definition of even above it checks that the number itself is even not the exponent.
This leads to a case where the procedure works only for odd numbers and fails for even numbers reaching maximum recursion depth.
This is because for odd numbers the else is always true so we are always executing (- exp 1) which gets to 0 and the procedure terminates.
For even numbers however we're always executing (/ exp 2) and it never gets to 0. It will get to 1 but executing (/ 1 2) gives 0.5 and (/ 0.5 2) gives 0.25 and so on. Essentially the equation never knows when to stop.
|#
