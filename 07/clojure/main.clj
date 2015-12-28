(println "What is the length of the room in feet? ")
(def len (Integer. (re-find #"\d+" (read-line))))
(println "What is the width of the room in feet? ")
(def width (Integer. (re-find #"\d+" (read-line))))
(def area (* len width))

(print (str "The area is\n" area " square feet\n" (* area 0.09290304) " square meters."))
