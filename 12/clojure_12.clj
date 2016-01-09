(defn total [principal rate years]
  (* principal (+ 1 (* years (* 0.01 rate)))))

(println "Enter the principal")
(def principal (Integer. (re-find #"\d+" (read-line))))
(println "Enter the rate of interest")
(def rate (Float. (re-find #"\d+.\d+" (read-line))))
(println "Enter the number of years")
(def years (Integer. (re-find #"\d+" (read-line))))

(printf "After %d years at %.1f%%, the investment will be worth $%.2f."
        years
        rate
        (total principal rate years))
