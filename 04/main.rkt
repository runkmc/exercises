#lang racket

(printf "Enter a noun:\n")
(define noun (read-line))
(printf "Enter a verb:\n")
(define verb (read-line))
(printf "Enter an adjective:\n")
(define adj (read-line))
(printf "Enter an adverb:\n")
(define adv (read-line))

(printf "Do you ~a your ~a ~a ~a? That's hilarious!" verb adj noun adv)