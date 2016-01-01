(defn tax [n]
  (* n 0.055))

(println "Enter the price of item 1:")
(def one (Integer. (re-find #"\d+" (read-line))))
(println "Enter the quantity of item 1:")
(def one-quant (Integer. (re-find #"\d+" (read-line))))
(println "Enter the price of item 2:")
(def two (Integer. (re-find #"\d+" (read-line))))
(println "Enter the quantity of item 2:")
(def two-quant (Integer. (re-find #"\d+" (read-line))))
(println "Enter the price of item 3:")
(def tre (Integer. (re-find #"\d+" (read-line))))
(println "Enter the quantity of item 3:")
(def tre-quant (Integer. (re-find #"\d+" (read-line))))
(def subtotal (+ (* one-quant one) 
                 (* two-quant two)
                 (* tre-quant tre)))

(printf "Subtotal: $%.2f%n" (double subtotal))
(printf "Tax: $%.2f%n" (tax subtotal))
(printf "Total: $%.2f%n" (+ subtotal (tax subtotal)))
