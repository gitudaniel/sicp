(define ifact-helper (lambda (product count n)
		       (if (> count n) product
			   (ifact-helper (* product count)
					 (+ count 1) n))))

(define ifact (lambda (n) (ifact-helper 1 1 n)))
