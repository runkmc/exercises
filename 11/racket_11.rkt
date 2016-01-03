#lang racket
(define (rounding x)
  (/ (round (* 100 x)) 100))

(print "How many euros are you exchanging? ")
(define euros (string->number (read-line)))
(print "What is the exchange rate? ")
(define rate (string->number (read-line)))

(printf "~a euros at an exchange rate of ~a is $~a U.S. dollars."
		euros
		rate
		(rounding (* (* 0.01 rate) euros)))
