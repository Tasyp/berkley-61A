(define (dupls-removed letters)
	(dupls-removed-iter letters ""))

(define (dupls-removed-iter letters checked-letters)
	(if (equal? letters ())
			checked-letters
			(dupls-removed-safe-iter letters checked-letters)))

(define (dupls-removed-safe-iter letters checked-letters) 
	(define head-letter (first letters))
	(define tail-letters (bf letters))
	(define add-head-to-checked
		(word checked-letters head-letter))

	(cond ((member? head-letter tail-letters) (dupls-removed-iter tail-letters checked-letters))
				(else (dupls-removed-iter tail-letters add-head-to-checked))))
	
			
