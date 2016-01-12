#lang racket

(define (rounding x)
  (/ (round (* 100 x)) 100))

(define (total principal rate years times)
  (* principal (expt (+ 1 (/ (* rate 0.01) times)) (* years times))))

(print "Enter the principal: ")
(define principal (string->number (read-line)))
(print "Enter the rate of interest: ")
(define rate (string->number (read-line)))
(print "Enter the number of years: ")
(define years (string->number (read-line)))
(print "Enter the times compounded per year: ")
(define times (string->number (read-line)))

(printf "$~a invested at ~a% for ~a years compounded ~a times per year is $~a."
		principal
		rate
		years
		times
		(rounding (total principal rate years times)))
