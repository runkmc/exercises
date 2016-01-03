(println "What is the input string?")
(let [inp (read-line)]
  (print (str inp " has " (count inp) " characters.")))
