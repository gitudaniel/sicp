(load "sicp/fixed_point.scm")

#| Computing the square root of a number x requires finding a solution x such
   that y^2 = x.
We can rewrite the above to become y = x/y and we notice that we are looking
for a fixed point of the function y|->x/y and can compute square roots as

(define (sqrt x)
  (fixed-point (lambda (y) (x/y))
               1.0))

However this fixed-point search does not converge (come to an end)
If our initial guess is y1 the next guess y2 = x/y1
y3 = x/y2 which is equivalent to x/(x/y1) = y1 because x/(x/y1) = x*(y1/x)
and the process starts all over again
This results in an infinite loop in which the 2 guesses y1 and y2 repeat over and over
|#

; To solve the above problem we use average damping. See below
(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
	       1.0))
