(defn total [principal rate years times]
  (* principal (Math/pow (+ 1 (/ (* rate 0.01) times))
                         (* times years))))

(println "What is the principal amount?")
(def principal (Integer. (re-find #"\d+" (read-line))))
(println "What is the rate?")
(def rate (Float. (re-find #"\d+.\d+" (read-line))))
(println "How many years?")
(def years (Integer. (re-find #"\d+" (read-line))))
(println "How many times is the interest compounded per year?")
(def times (Integer. (re-find #"\d+" (read-line))))

(printf "$%d invested at %.1f%% for %d years compounded %d times per year is $%.2f."
        principal
        rate
        years
        times
        (total principal rate years times))
