(println "Enter a noun:")
(let [noun (read-line)]
  (println "Enter a verb:")
  (let [verb (read-line)]
    (println "Enter an adjective:")
    (let [adj (read-line)]
      (println "Enter an adverb:")
      (let [adv (read-line)]
        (println (str "Do you " verb " your " adj " " noun " " adv "? That's hilarious!"))))))
