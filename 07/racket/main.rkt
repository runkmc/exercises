#lang racket

(printf "What is the length of the room in feet? ")
(define len (string->number (read-line)))
(printf "What is the width of the room in feet? ")
(define width (string->number (read-line)))
(define area (* width len))

(printf "The area is \n~a square feet \n~a square meters"
		area (* area 0.09290304))
