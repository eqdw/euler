require 'date'
sum = 0

(1901..2000).each do |i|
  (1..12).each do |j|
    d = Date.new(i, j, 1)
    sum += 1 if ((d.wday) == 0)
  end
end
puts sum
