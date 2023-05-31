(define (switch sentence)
	(switch-iter sentence ()))

(define (switch-iter sentence result)
	(if (equal? sentence ())
		result
		(switch-iter-safe sentence result)))

(define (switch-iter-safe sentence result)
	(define head-word (first sentence))
	(define tail-words (bf sentence))
	(cond ((and (equal? result ())
							(equal? 'you head-word))
				 (switch-iter tail-words (append result (list 'I))))
				((or (equal? head-word 'i)
						 (equal? head-word 'me))
				 (switch-iter tail-words (append result (list 'you))))
				((equal? head-word 'you)
				 (switch-iter tail-words (append result (list 'me))))
				(else (switch-iter tail-words (append result (list head-word))))))
