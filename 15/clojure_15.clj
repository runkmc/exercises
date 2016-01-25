(defn check-password [pass]
  (cond
    (= pass "abc$123") "Welcome!"
    :else "I don't know you."))

(println "What is the password?")
(def pass (read-line))
(println (check-password pass))
