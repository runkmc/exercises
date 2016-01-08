(defn exchange [amount rate]
  (* amount (/ rate 100)))

(println "How many euros are you exchanging?")
(def euros (Integer. (re-find #"\d+" (read-line))))
(println "What is the exchange rate?")
(def rate (Float. (re-find #"\d+.\d+" (read-line))))

(printf "%d euros at an exchange rate of %.2f is $%.2f U.S. dollars." euros rate (exchange euros rate))
