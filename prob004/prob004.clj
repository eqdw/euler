(require '[clojure.string :as s])

(defn palindrome? [num]
  (let [numstr (.toString num),
        revstr (s/reverse numstr)]
    (= numstr revstr)))


(defn answer []
  (reduce (fn [outer-max i] 
    ;; What this is going to do is find us the largest palindrome
    ;; that is the result of i*j where i is fixed
    (let [max-for-i (reduce (fn [inner-max j]
                      (let [product (* i j)]
                        (if (and (> product inner-max) (palindrome? product))
                          product
                          inner-max))) 0 (range 100 1000)) ]
      (if (> max-for-i outer-max)
        max-for-i
        outer-max))) 0 (range 100 1000)))


