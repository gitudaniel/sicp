(define (product term a next b)
  (define (iter a result)
    (if (= a b) ; using = instead of > because result returned with > is already
	result  ; multiplied by the next number in the series
	(iter (next a) (* result (term (next a))))))
  (iter a 1))

