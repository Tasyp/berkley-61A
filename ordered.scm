(define (=< a b)
	(if (or (= a b)
					(< a b))
			#t
			#f))

(define (ordered? numbers)
	(if (equal? numbers ())
		#t
		(ordered?-iter numbers)))

(define (ordered?-iter numbers)
	(define head (first numbers))
	(define tail (bf numbers))
	(cond ((equal? tail ()) #t)
				((=< head (first tail)) (ordered? tail))
				(else #f)))
