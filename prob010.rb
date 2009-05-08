def genprimes n #all primes < n
  iscomp = (0..2000000).map{|i| false}

  primes = [2]
  (3..n).each do |i|

    if(!iscomp[i])
      primes.each do |j|
        if((i % j) == 0)
          k = 0
          while((k*i) <= 2000000)
            iscomp[k*i] = true
            k += 1
          end
          break
        end
      primes << i if (j == primes[-1])
      end
    end
    puts primes[-1]
  end
  primes
end

@primes = genprimes 2000000
puts @primes.inject(&:+)

