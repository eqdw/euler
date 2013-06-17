primes = [2, 3, 5, 7, 11] #we already know some, so why not

def next_prime primes
  infinity = 1.0/0
  start = primes[-1]+1

  (start..infinity).each do |candidate|
    if primes.any? {|prime| candidate % prime == 0}
      # is not prime, skip
    else
      return candidate
    end
  end
end

num     = 600851475143
factors = []
i       = 0

while(num > 1) do
  if(i == primes.length)
    primes << next_prime(primes)
  end
  if(num % primes[i] == 0)
    factors << primes[i]
    num = num / primes[i]
  else
    i += 1
  end
end
puts factors.sort.last
