; Expressed using an auxiliary procedure
(define (f x y)
  (define (f-helper a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
  (f-helper (+ 1 (* x y))
	    (- 1 y)))

; Expressed using lambda
(define (f x y)
  ((lambda (a b)
     (+ (* x (square a))
	(* y b)
	(* a b)))
   (+ 1 (* x y))
   (- 1 y)))

; Expressed using a let construct
(define (f x y)
  (let ((a (+ 1 (* x y)))
	(b (- 1 y)))
    (+ (* x  (square a))
       (* y b)
       (* a b))))

; Expressed using internal definitions
(define (f x y)
  (define a (+ 1 (* x y)))
  (define b (- 1 y))
  (+ (* x (square a))
     (* y b)
     (* a b)))
