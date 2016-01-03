#lang racket

(print "What is your name?")
(define name (read-line))
(printf "Hello, ~a, nice to meet you!" name)
