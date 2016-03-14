#lang racket

(define (bac ounces weight sex hours)
  (cond
	((string=? "M" sex)
		(- (/ (* ounces 5.14) (* weight 0.73)) (* hours 0.015)))
	((string=? "F" sex)
		(- (/ (* ounces 5.14) (* weight 0.66)) (* hours 0.015)))))

(print "Ounces:")
(define ounces (string->number (read-line)))
(print "Weight:")
(define weight (string->number (read-line)))
(print "Sex:")
(define sex (read-line))
(print "Hours since last drink:")
(define hours (string->number (read-line)))

(define my_bac (bac ounces weight sex hours))
(printf "Your bac is ~a~n" my_bac)
(if (< 0.08 my_bac) 
    (print "You are not legal to drive.")
    (print "You are legal to drive."))
	 
