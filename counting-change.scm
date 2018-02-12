(define (count-change amount)
  (cc amount 3))

(define (cc amount kinds-of-coins)
  #| Recurses through the parameters until amount = 0
  then adds up all the ones to give the final answer
  |#
  (cond ((= amount 0) 1)
	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc amount (- kinds-of-coins 1))
		 (cc (- amount
			(first-denomination kinds-of-coins))
		     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  #| Takes as input the number of coins available and 
  returns the denomination of the largest value coin
  Given half-dollars, quarters, nickels, dimes and pennies
  |#
  (cond ((= kinds-of-coins 1) 1) ; pennies no other comp available
	((= kinds-of-coins 2) 5) ; btn pennies and dimes dimes have larger value
	((= kinds-of-coins 3) 10) ; nickels have larger value than dimes
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))