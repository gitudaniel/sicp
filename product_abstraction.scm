(define (product term a next b)
  (if (> a b)
      1 ; this is the last term returned by the function. It is multiplied
      (* (term a)
	 (product term (next a) next b))))
