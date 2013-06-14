def collatz n
  i = 1
  while n != 1
    if (n % 2) == 0
      n /= 2
    else
      n *= 3
      n += 1
    end
    i += 1
  end
  i
end

newlen = 0
len = 0
longest = 0

(1..1000000).each do |i|
  puts "testing #{i}"
  newlen = collatz i
  if newlen > len
    longest = i
    len = newlen
    puts "longest: #{longest} - length: #{len}"
  end
end
puts "longest chain starts with #{longest}"
