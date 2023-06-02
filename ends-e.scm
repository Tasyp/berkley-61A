(define (ends-e sentence)
	(ends-e-iter sentence ()))

(define (ends-e-iter sentence result)
	(if (equal? sentence ())
		result
		(ends-e-safe-iter sentence result)))

(define (ends-e-safe-iter sentence result)
	(define head (first sentence))
	(define tail (bf sentence))
	(if (word-ends-e head)
		(ends-e-iter tail (append result (list head)))
		(ends-e-iter tail result)))

(define (word-ends-e word)
	(if (equal? (bf word) "")
			(equal? (first word) 'e)
			(word-ends-e (bf word))))
