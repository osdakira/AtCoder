# 1 2 1 1 3
lines = ARGF.read.split("\n")
numbers = lines[1].split.map(&:to_i)
new_numbers = []
memo = {}
numbers.each.with_index do |n, i|  
  if memo[n].nil?
    latest = -1 
  else    
    latest = memo[n] + 1   
  end
  memo[n] = i
  new_numbers << latest 
end
puts new_numbers.join(" ")
