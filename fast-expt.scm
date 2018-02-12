;Computing exponents
(define (fast-expt b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2)))) ;succesive squaring
	(else (* b (fast-expt b (- n 1))))))
