def is_palindrome num
  numstr = num.to_s
  return numstr == numstr.reverse
end


biggest = 0
100.upto(999) do |i|
  100.upto(999) do |j|
    biggest = i * j if ( is_palindrome(i*j) && (i*j) > biggest )
  end
end
puts biggest
