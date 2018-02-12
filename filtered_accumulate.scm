(define (filtered-accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (if (filter a)
	  (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b filter))
	  (combiner null-value (filtered-accumulate combiner null-value term (next a) next b filter)))))

#| This would be used if you wanted to apply a filter to a given range
e.g sum all prime numbers between 1 and 100 or multiply all even numbers between 3 and 25
if the filter is true the current result is combined with the next term
if the filter is false the current result remains unchanged (it is combined with the null value)
|#
