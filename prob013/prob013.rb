require 'open-uri'

open("http://projecteuler.net/index.php?section=problems&id=13") do |f|
  lines = f.readlines

  nums = []
  lines.each do |l|
    nums << l if l.match /\d\d\d\d\d\d\d\d\d\d+/
  end
  nums.map! {|l| l.split(/<br\s\/>/)}

  sum = 0

  nums.each do |l|
    sum += l[0].to_i
  end
  puts sum
end
