#lang racket

(define (convert_month num)
  (cond
	((string=? num "1") "January")
	((string=? num "2") "February")
	((string=? num "3") "March")
	((string=? num "4") "April")
	((string=? num "5") "May")
	((string=? num "6") "June")
	((string=? num "7") "July")
	((string=? num "8") "August")
	((string=? num "9") "September")
	((string=? num "10") "October")
	((string=? num "11") "November")
	((string=? num "12") "December")))

(print "Enter the number of the month:")
(define month_number (read-line))
(printf "The number of the month is ~a" (convert_month month_number))
