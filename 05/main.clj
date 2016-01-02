(println "What is the first number?")
(let [f (Integer. (re-find #"\d+" (read-line)))]
  (println "What is the second number?")
  (let [s (Integer. (re-find  #"\d+" (read-line)))]
    (println (str f " + " s " = " (+ f s)))
    (println (str f " - " s " = " (- f s)))
    (println (str f " * " s " = " (* f s)))
    (println (str f " / " s " = " (/ f s)))))
