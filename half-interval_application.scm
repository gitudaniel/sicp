(load "sicp/half-interval.scm")

#| For an explanation of the meaning of the word root
   See the notes under 1.3.3.1 for a consice definition
   Alternatively go to http://mathforum.org/library/drmath/view/52673.html 
    for a more detailed definition
|#
; The method below approximates pi as the root between 2 and 4 of sin x = 0
(half-interval-method sin 2.0 4.0)

; Search for a root of the equation x cubed - 2x - 3 = 0 btn 1 and 2
(half-interval-method (lambda (x) (- (* x x x) (* 2 x) 3))
		      1.0
		      2.0)
