def strawberries(n, k, s)
  s.split('X').map { |x| x.count('O') / k }.sum  
end

def main(input)
  lines = input.split("\n")
  n, k = lines[0].split.map(&:to_i)
  s = lines[1]
  strawberries(n, k, s)
end

lines = ARGF.read
puts main(lines)

# require "minitest/autorun"

# describe 'test' do
#   it 'test1' do
#     i = <<~INPUT
#       7 3
#       OOXOOOO
#     INPUT
#     _(main(i)).must_equal 1    
#   end

#   it 'test2' do 
#     i = <<~INPUT
#       12 2
#       OXXOOOXOOOOX
#     INPUT
#     _(main(i)).must_equal 3
#   end

#   it 'test3' do 
#     i = <<~INPUT
#       22 5
#       XXOOOOOOOOXXOOOOOXXXXX
#     INPUT
#     _(main(i)).must_equal 2    
#   end
# end