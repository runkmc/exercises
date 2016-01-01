#lang racket

(print "What is the length of the room? ")
(define l (string->number (read-line)))
(print "What is the width of the room?" )
(define w (string->number (read-line)))
(define coverage 350)
(define total (ceiling (/ (* l w) coverage)))

(printf "You will need to purchase ~a gallonds of paint to cover ~a square feet."
        total
        (* l w))