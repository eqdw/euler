(println 
  (reduce + 
          (filter #(or (= (mod % 3) 0) (= (mod % 5) 0))
                  (take 999 (iterate inc 1)))))
