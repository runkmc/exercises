#lang racket
(require racket/match)

(define (calculate-totals amount state)
  (match state
    ("WI" (cons (* 0.055 amount) amount))
    (_ (cons 0.0 amount))))

(define (tax-totals amounts)
  (cond
    ((eq? 0.0 (car amounts)) "")
    (else
     (format "The subtotal is $~a~nThe tax is $~a~n" (cdr amounts) (car amounts)))))

(print "What is the order amount? ")
(define amount (string->number (read-line)))
(print "What is the state? ")
(define state (read-line))

(define totals (calculate-totals amount state))
(define taxes (tax-totals totals))
(print taxes)
(print (format "The total is $~a" (+ (car totals) (cdr totals))))