# ruby -d a.rb

$memo = {}

def f(x)
  return $memo[x] if $memo[x]
  return x if x % 2 != 0

  f(x/2)
end

def main(inputs)
  l = inputs.split("\n")
  as = l[1].split.map(&:to_i)
  r = as.flat_map.with_index do |i, index|
    as[index..].map do |j|
      x = f(i + j)
      $memo[i + j] = x
      x
    end
  end
  r.sum
end

def test
  require "minitest/autorun"

  describe 'test' do
    it 'test' do
      inputs = <<~INPUT
2
4 8
INPUT
outputs = 5
      _(main(inputs)).must_equal outputs
    end
  end
end

if $DEBUG
  test
else
  puts main(ARGF.read)
end
