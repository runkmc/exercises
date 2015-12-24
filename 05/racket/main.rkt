#lang racket

(printf "What is the first number?\n")
(define f (string->number (read-line)))
(printf "What is the second number?\n")
(define s (string->number (read-line)))

(printf "~a + ~a = ~a\n" f s (+ f s))
(printf "~a - ~a = ~a\n" f s (- f s))
(printf "~a * ~a = ~a\n" f s (* f s))
(printf "~a / ~a = ~a\n" f s (/ f s))
