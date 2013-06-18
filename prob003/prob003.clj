(def num-to-check 600851475143)

(defn next-prime [primes candidate]
  (if (some (fn [x] (= (rem candidate x) 0)) primes)
    (recur primes (inc candidate))
    candidate))




(defn factorize-4 [number primes divisor factors]
  (cond
    (= number 1) factors
    (= (rem number divisor) 0)
      (recur (quot number divisor) primes divisor (conj factors divisor))
    :else 
      (let [new-prime (next-prime primes (inc divisor))]
      (recur number (conj primes new-prime) new-prime factors))))

(defn factorize-2 [number primes]
  (factorize-4 number primes (first primes) []))

(def factorize
  (factorize-2 num-to-check [2]))

(def answer
  (first (into '() factorize)))


