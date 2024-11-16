def cyclic(n)
  a = n.to_s.chars
  b = a.rotate
  c = b.rotate
  "#{b.join} #{c.join}"
end

n = ARGF.read.chomp
puts cyclic(n)

# require "minitest/autorun"

# describe 'test' do
#   it 'test' do
#     _(cyclic(379)).must_equal '793 937'
#     _(cyclic(919)).must_equal '199 991'
#   end
# end