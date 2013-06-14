@squares = (0..1000).map{|i| i**2}

(1..1000).each do |a|
  (1..1000).each do |b|
  #  puts "testing #{a} and #{b}"
   # break if (a + b) >= 1000
    cc = (@squares[a] + @squares[b])
    c = Math::sqrt(cc).to_i
    if @squares.include?(cc)
        puts "#{a} + #{b} + #{c} = #{a + b + c}" if (a + b + c) < 1000
        puts "#{a} + #{b} + #{c} = 1000!!!!!!!" if (a + b + c) == 1000
    end
  end
end
