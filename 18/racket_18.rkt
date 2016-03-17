#lang racket

(define (conv temp to)
  (cond
	((string=? "F" to)
	 (+ 32 (* temp (/ 9.0 5.0))))
	((string=? "C" to)
	 (* (- temp 32) (/ 5.0 9.0)))))

(print "Convert to C)elsius or F)ahrenheit:")
(define convert_to (read-line))
(print "Enter temp:")
(define temp (string->number (read-line)))

(printf "~a~n" (conv temp convert_to))
