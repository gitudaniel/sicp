(load "sicp/smallest-divisor.scm")
(load "sicp/carmichael_numbers.scm")

; Experiment to try and find all Carmichael numbers from the given
; number to zero.
; Still a work in progress.
; Needs review.
(define (find_carmichaels n)
  (cond ((= n 0) "No more Carmichaels to be found")
	;((if (congruent n)
	;     (if (not prime? n)
	;	 (display n)
	;	 (find_carmichaels (- n 1)))
	;     (find_carmichaels (- n 1))))))
	((and (congruent n) (not (prime? n))) (display n) (find_carmichaels (- n 1)))
	(else (find_carmichaels (- n 1)))))
