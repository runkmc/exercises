#lang racket

(print "How many people? ")
(define people (string->number (read-line)))
(print "How many pizzas do you have? ")
(define pizzas (string->number (read-line)))
(printf "~a people with ~a pizzas~n" people pizzas)
(printf "Each person gets ~a pieces of pizza.~nThere are ~a leftover pieces"
        (quotient (* 8 pizzas) people)
        (modulo (* 8 pizzas) people))
