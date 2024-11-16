# 4 個のボールがあり、 i 個目のボールの色は  Ai​ です。
# 同じ色のボールを 2 つ選び両方捨てるという操作を最大何回行えるか求めてください。
numbers = gets.chomp.split.map(&:to_i)
if numbers.uniq.size == 1
  puts 2
else
  puts numbers.combination(2).to_a.select { |a, b| a == b }.uniq.size
end
