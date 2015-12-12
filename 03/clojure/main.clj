(println "What is the quote?")
(let [q (read-line)]
  (println "Who said it?")
  (let [n (read-line)]
    (print (str n " says, \"" q "\""))))
