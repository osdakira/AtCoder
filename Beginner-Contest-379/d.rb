def garden(queris)
  pots = []
  rets = []

  queris.each do |q|
    case q[0]
    when 1
      pots.push 0
    when 2
      pots.each_with_index { |x, i| pots[i] = x + q[1] }
    when 3
      reject, rest = pots.partition { |x| x >= q[1] }
      pots = rest
      rets.push reject.size
    end
  end
  rets.join("\n")
end

def main(input)
  lines = input.split("\n")
  queris = lines[1..-1].map { |x| x.split.map(&:to_i) }
  garden(queris)
end

lines = ARGF.read
puts main(lines)

# require "minitest/autorun"

# describe 'test' do
#   it 'test1' do
#     i = <<~INPUT
#       6
#       1
#       2 15
#       1
#       3 10
#       2 20
#       3 20
#     INPUT
#     o = <<~OUTPUT.chomp
#       1
#       1
#     OUTPUT
#     _(main(i)).must_equal o
#   end

#   it 'test2' do 
#     i = <<~INPUT
#       15
#       1
#       1
#       2 226069413
#       3 1
#       1
#       1
#       2 214168203
#       1
#       3 214168203
#       1
#       1
#       1
#       2 314506461
#       2 245642315
#       3 1
#     INPUT
#     o = <<~OUTPUT.chomp
#       2
#       2
#       4
#     OUTPUT
#     _(main(i)).must_equal o
#   end
# end