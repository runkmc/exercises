(defn check-age [age]
  (cond
    (< 15 age) "You're old enough to drive"
    :else "You're not old enough to drive"))

(println "What is your age? ")
(def age (Integer. (re-find #"\d+" (read-line))))
(println (check-age age))
