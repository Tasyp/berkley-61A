(define (squares number-sentence)
	(squares-iter number-sentence ()))

(define (squares-iter number-sentence result)
	(if (equal? number-sentence ())
		result
		(squares-iter (bf number-sentence) (append result (list (square (first number-sentence)))))))

(define (square x)
	(* x x))
