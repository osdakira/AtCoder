# 10 100
# 320 578 244 604 145 839 156 857 556 400

lines = ARGF.read.split("\n")
n, m = lines[0].split.map(&:to_i)
numbers = lines[1].split.map(&:to_i)
sums = 0
n.times.each do |i|
  (n - i).times.each do |j|
    sums += numbers[i, j + 1].sum % m
  end
end
puts sums
