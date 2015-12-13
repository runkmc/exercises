#lang racket

(printf "What is the input string?\n")
(define inp (read-line))
(printf "~a has ~a characters.\n" inp (string-length inp))