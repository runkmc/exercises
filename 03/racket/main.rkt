#lang racket

(printf "What is the quote?\n")
(define q (read-line))
(printf "Who said it?\n")
(define a (read-line))
(printf "~a says, \"~a\"" a q)