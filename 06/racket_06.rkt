#lang racket

(printf "What is your current age? ")
(define current-age (string->number (read-line)))
(printf "At what age would you like to retire? ")
(define retirement-age (string->number (read-line)))
(define this-year (date-year (seconds->date (current-seconds))))
(define years-left (- retirement-age current-age))
(define retirement-year (+ this-year years-left))

(printf "You have ~a years left until you can retire.\nIt's ~a, so you can retire in ~a."
		years-left this-year retirement-year)
