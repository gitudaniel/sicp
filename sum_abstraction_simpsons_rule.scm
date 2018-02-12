(load "sicp/summation_abstraction.scm")

(define (round-to-next-even x)
  (+ x (remainder x 2)))

(define (inc x) (+ x 1))

(define (cube x) (* x x x))

(define (simpson f a b n)
  (define fixed-n (round-to-next-even n))
  (define h (/ (- b a) n))
  (define (simpson-term k)
    (define y (f (+ a (* k h))))
    (if (or (= k 0) (= k n))
	(* 1 y)
	(if (even? k)
	    (* 2 y)
	    (* 4 y))))
  (* (/ h 3) (sum simpson-term a inc b)))

#| The procedure under (simpson-term k) can be rewritten as follows
(define (yk k) (f (+ a (* h k))))
(define (simpson-term k)
  (* (cond ((or (= k 0) (= k n)) 1)
           ((odd? k) 4)
           (else 2))
     (yk k)))
|#