# 1 2 1 1 3
lines = ARGF.read.split("\n")
numbers = lines[1].split.map(&:to_i)
new_numbers = []
memo = {}
numbers.each.with_index do |n, i|
  ini = memo[n] || 0   
  befores = numbers[ini, i]
  latest = befores.rindex(n)
  latest = latest.nil? ? -1 : latest + 1
  if latest != -1
    memo[n] = latest -1 
  end
  new_numbers << latest
end
puts new_numbers.join(" ")
