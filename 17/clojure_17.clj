(defmulti bac (fn [ounces weight sex hours] sex))
(defmethod bac "M" [ounces weight sex hours]
  (- (/ (* ounces 5.14) (* weight 0.73)) (* hours 0.015)))
(defmethod bac "F" [ounces weight sex hours]
  (- (/ (* ounces 5.14) (* weight 0.66)) (* hours 0.015)))

(println "Ounces: ")
(def ounces (Integer. (re-find #"\d+" (read-line))))
(println "Weight: ")
(def weight (Integer. (re-find #"\d+" (read-line))))
(println "Sex: ")
(def sex (read-line))
(println "Hours since last drink: ")
(def hours (Integer. (re-find #"\d+" (read-line))))

(def my_bac (bac ounces weight sex hours))
(printf "Your BAC is %.3f\n" my_bac)
(if (< 0.08 my_bac) 
    (println "You are not legal to drive.")
    (println "You are legal to drive."))

