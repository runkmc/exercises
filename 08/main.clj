(println "How many people? ")
(def people (Integer. (re-find #"\d+" (read-line))))
(println "How many pizzas? ")
(def pizzas (Integer. (re-find #"\d+" (read-line))))
(def pieces (* pizzas 8))

(println (str people " people with " pizzas " pizzas."))
(println (str "Each person gets " (quot pieces people) " pieces of pizza."))
(println (str "There are " (mod pieces people) " leftover pieces."))
