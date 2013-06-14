tri = []
File.open("/Users/erauqssi/dev/ruby/euler/prob018.txt","r") do |aFile|
  tri = aFile.readlines
end

tri.map! {|i| i.split(/\s+/)}
tri.each do |i|
  i.map! {|j| j.to_i}
end


tri.reverse!

# tri.each_index do |i|
#   puts "#{i}:"
#   tri[i].each do |j|
#     puts j
#   end
# end


(1..tri.size-1).each do |i|
  tri[i].each_index do |j|
    puts "i - #{i} - j - #{j} - tri[i][j] - #{tri[i][j]}"
    puts " tri[i-1][j] - #{tri[i-1][j]} - tri[i-1][j+1] - #{tri[i-1][j+1]}"
    a = tri[i][j] + tri[i-1][j]
    b = tri[i][j] + tri[i-1][j+1]
    tri[i][j] = (a > b) ? a : b
  end
end

puts tri[-1][0]
    
    
  
