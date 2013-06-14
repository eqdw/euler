puts (1...1000).select{|e| e % 3 == 0 || e % 5 == 0}.reduce(&:+)
