(println "What is your current age?")
(def age (Integer. (re-find #"\d+" (read-line))))
(println "At what age would you like to retire?")
(def retirement-age (Integer. (re-find #"\d+" (read-line))))
(def current-year (let [cal (java.util.Calendar/getInstance)]
                    (. cal get java.util.Calendar/YEAR)))
(def years-left (- retirement-age age))
(def retirement-year (+ years-left current-year))

(println (str "You have " years-left " years left until you can retire."))
(println (str "It's " current-year ", so you can retire in " retirement-year "."))
