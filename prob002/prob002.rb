fibs = [1,2,3]
while(fibs[-1] <= 4_000_000)
  fibs << fibs[-1] + fibs[-2]
end
puts "DEBUG: #{fibs.length}"
puts fibs.select{|e| e%2 == 0}.inject(&:+)
