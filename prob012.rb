def factorize n #returns set of all factors
  factors = []
  (1..(Math::sqrt(n).to_i)).each do |i|
     if((n % i) == 0)
       factors << i
       factors << (n / i)
     #factors << i if (n % i) == 0
  end
  factors
end

factors = []

i = 1
trinum = 0
while(factors.size != 500)
  trinum = (i * (i + 1)) / 2
  factors = (factorize trinum).size
  puts "trinum: #{trinum} - numfactors: #{factors}"
  i += 1
end
puts trinum
