(defmulti convert (fn [temp to] to))
(defmethod convert "C" [temp _]
  (double (* (- temp 32) (/ 5 9))))
(defmethod convert "F" [temp _]
  (double (+ 32 (* temp (/ 9 5)))))

(println "Convert to C)elsius or F)ahrenheit:")
(def convert_to (read-line))
(println "Temp:")
(def temp (Integer. (re-find #"\d+" (read-line))))

(printf "%.2f\n" (convert temp convert_to))

