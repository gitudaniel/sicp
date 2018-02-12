(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (cond ((> a b) result)
	  ((filter a) (iter (next a) (combiner result (term a))))
	  (else (iter (next a) result))))
  (iter a null-value))

#|
For this the result comes from combining the result to the current value of a i.e. (term a)
We then iterate the next value of a to the result of combining the result to the current value of a
I missed this subtle fact when writing the procedure and had a hard time coming up with a way to get to the next value of a
This is how I ended up with the procedure below

(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(combiner (if (filter a)
		      (term a)
		      null-value)
		  result))
    (filtered-accumulate filter combiner null-value term (next a) next b))
  (iter a null-value))
|#
