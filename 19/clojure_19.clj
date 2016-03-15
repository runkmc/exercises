(defn bmi [height weight]
  (* 703.0 (/ weight (* height height))))

(println "Your height:")
(def h (Integer. (re-find #"\d+" (read-line))))
(println "Your weight:")
(def w (Integer. (re-find #"\d+" (read-line))))
(let [b (bmi h w)]
  (cond
        (<= b 18.5) (printf "Your BMI is %.1f.\nYou are underweight." b)
        (< b 25.0) (printf "Your BMI is %.1f.\nYou are within the ideal range." b)
        :else (printf "Your BMI is %.1f.\nYou are overweight." b)))

