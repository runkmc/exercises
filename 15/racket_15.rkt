#lang racket

(define (check-password pass)
  (if (equal? pass "abc$123") (print "Welcome!") (print "I don't know you.")))

(print "What is the password? ")
(define p (read-line))
(check-password p)