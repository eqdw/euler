def palindrome? num
  num.to_s == num.to_s.reverse
end

answer = (100..999).reduce do |outer_max, i|
  max_for_i = (100..999).reduce do |inner_max, j|
    product = i * j
    if (palindrome?(product) && (product > inner_max))
      product
    else
      inner_max
    end
  end
  [max_for_i, outer_max].max
end
puts answer
