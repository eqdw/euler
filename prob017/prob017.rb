def num_to_word n
  digits = []
  4.times do |i|
    digits[i] = n % 10
    n /= 10
  end

  rtn = ""

  if (digits[3] == 1)
    rtn = "onethousand"
  else

    rtn = case digits[2]
          when 1 then "One"
          when 2 then "Two"
          when 3 then "Three"
          when 4 then "Four"
          when 5 then "Five"
          when 6 then "Six"
          when 7 then "Seven"
          when 8 then "Eight"
          when 9 then "Nine"
          else ""
          end
    rtn += "Hundred" if digits[2] != 0
    rtn += "and" if ((digits[2] != 0) && ((digits[1] != 0) || (digits[0] != 0)))
    rtn += case digits[1]
           when 9 then "ninety"
           when 8 then "eighty"
           when 7 then "seventy"
           when 6 then "sixty"
           when 5 then "fifty"
           when 4 then "forty"
           when 3 then "thirty"
           when 2 then "twenty"
           else ""
           end


    if (digits[1] == 1)
      rtn += case digits[0]
             when 9 then "nineteen"
             when 8 then "eighteen"
             when 7 then "seventeen"
             when 6 then "sixteen"
             when 5 then "fifteen"
             when 4 then "fourteen"
             when 3 then "thirteen"
             when 2 then "twelve"
             when 1 then "eleven"
             when 0 then "ten"
             end
    else
      rtn += case digits[0]
             when 9 then "nine"
             when 8 then "eight"
             when 7 then "seven"
             when 6 then "six"
             when 5 then "five"
             when 4 then "four"
             when 3 then "three"
             when 2 then "two"
             when 1 then "one"
             else ""
             end
    end
  end

  puts rtn
  rtn
end


sum = 0

(1..1000).each {|i| sum += num_to_word(i).size}
puts sum
