#lang racket
(define (rounding x)
  (/ (round (* 100 x)) 100))

(define (total principal rate years)
  (* principal (+ 1 (* years (* 0.01 rate)))))

(print "Enter the principal: ")
(define principal (string->number (read-line)))
(print "Enter the rate of interest: ")
(define rate (string->number (read-line)))
(print "Enter the number of years: ")
(define years (string->number (read-line)))

(printf "After ~a years at ~a%, the investment will be worth $~a."
		years
		rate
		(total principal rate years))

