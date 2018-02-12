(load "sicp/product_abstraction.scm")

(define (pi-term n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))

#| alt pi-term
(define (pi-term-alt n)
  (let* ((numer1 (* n 2))
	 (denom (+ numer1 1))
	 (numer2 (+ denom 1)))
    (/ (* numer1 numer2)
       (square denom))))
|#

(define (inc n) (+ n 1))

(define (pi-product a b)
  (* (product pi-term a inc b) 4.0))
; find out why this function fails when b >= 43000
