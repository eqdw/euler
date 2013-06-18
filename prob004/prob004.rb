def is_palindrome num
  numstr = num.to_s

  i = 0
  while i <= numstr.length
    if numstr[i] != numstr[ -(i+1) ]
      return false
    end
    i += 1
  end
  return true
end


biggest = 0
100.upto(999) do |i|
  100.upto(999) do |j|
    biggest = i * j if ( is_palindrome(i*j) && (i*j) > biggest )
  end
end
puts biggest
