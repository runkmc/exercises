(defmulti taxes (fn [amount state] state))
(defmethod taxes "WI"
  [amount state]
  (* amount 0.055))
(defmethod taxes :default
  [amount state]
  0.0)
(defn print-totals [amount state]
  (cond
    (= 0.0 (taxes amount state))
      (printf "The total is $%.2f." amount)
    :else 
      (printf "The subtotal is $%.2f\nThe tax is $%.2f.\nThe total is $%.2f."
              amount
              (taxes amount state)
              (+ amount (taxes amount state)))))


(println "What is the order amount?")
(def amount (Double. (re-find #"\d+.\d+" (read-line))))
(println "What is the state?")
(def state (read-line))
(print-totals amount state)
