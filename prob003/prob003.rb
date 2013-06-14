def add_next_prime_to_arr! primes #adds all primes up to n to the array
#  @bigprime = primes[-1]
#   ((primes[-1] + 1)..).each do |i|
#     primes.each do |j|
#       break if (i % j) == 0
#       primes << i if (j == primes[-1])
#     end
#     break if (primes[-1] > @bigprime)
#   end
  i = primes[-1] + 1
  size = primes.size
  loop do 
    primes.each do |j|
      break if (i % j) == 0
      primes << i if (j == primes[-1])
    end
    break if (size < primes.size)
    i += 1
  end
  return primes
end



@num = 600851475143
@primes = [2]
i = 0
loop do
    puts @num
    (@num % @primes[i] == 0) ? @num /= @primes[i] : i += 1
    add_next_prime_to_arr!(@primes) if @primes[i] == nil
    break if @primes[i] >= @num
end

puts @num
      
    
