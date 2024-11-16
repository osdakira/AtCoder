def cyclic(n)
  a = n.to_s.chars
  b = a.rotate
  c = b.rotate
  "#{b.join} #{c.join}"
end

def main(input)
  lines = input.split("\n")
  cyclic(lines[0])
end


if __FILE__ == $PROGRAM_NAME
  input = ARGF.read
  lines = input.split("\n")
  puts main(lines[0])
end

# require "minitest/autorun"

# describe 'test' do
#   it 'test' do
#     _(cyclic(379)).must_equal '793 937'
#     _(cyclic(919)).must_equal '199 991'
#   end
# end
