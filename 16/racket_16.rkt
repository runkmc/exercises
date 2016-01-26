#lang racket

(define (check-age age)
  (cond
    ((> age 15) #t)
    (#t #f)))

(print "What is your age? ")
(define age (string->number (read-line)))
(print 
 (if (check-age age) 
     "You are old enough to drive"
     "You are not old enough to drive."))