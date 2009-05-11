def fact n
  rtn = 1
  (1..n).each do |i|
    rtn *= i
  end
  rtn
end

def nCr n, r
  (fact n) / ((fact r) * (fact (n - r)))
end

puts(nCr 40, 20)
