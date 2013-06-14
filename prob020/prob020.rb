prod = 1
(1..100).each do |i|
  prod *= i
end

str = prod.to_s

sum = 0

str.each_char do |i|
  sum += i.to_i
end
puts sum
