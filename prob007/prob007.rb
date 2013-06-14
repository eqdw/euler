@primes = [2]

i = 3
while @primes.size <10001 do
  @primes.each do |j|
    break if (i % j) == 0
    @primes << i if (j == @primes[-1])
  end
  i += 1
  puts @primes[-1]
end
@primes[-1]
