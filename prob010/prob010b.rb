File.open("/Users/erauqssi/downloads/primes1.txt","r") do |aFile|
  lines = aFile.readlines
  lines = lines.map{|str| str.split(/\s+/)}

  sum = 0
    breaker = false
    lines.each do |arrone|
      break if breaker
      arrone.each do |num|
        break if breaker
        puts num.to_i
        if (num.to_i > 2000000)
          breaker = true
        else
          puts "#{sum} + #{num.to_i} = #{sum + num.to_i}"
          sum += num.to_i
          
        end
      end
    end
#  sum -= 1000000
#  sum -= 2000003
  puts sum
  end
