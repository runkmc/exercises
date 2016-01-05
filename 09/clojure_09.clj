(defn area [x y]
  (* x y))

(defn gallons [x]
  (int (Math/ceil (/ x 350))))

(println "Length of room? ")
(def len (Integer. (re-find #"\d+" (read-line))))
(println "Width of room? ")
(def wid (Integer. (re-find #"\d+" (read-line))))

(println (str "You will need "
              (gallons (area len wid))
              " gallons of paint to cover "
              (area len wid)
              " square feet."))
