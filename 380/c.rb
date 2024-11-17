# ruby -d c.rb -v

def move(k, s)
  segs = s.chars.chunk_while { |a, b| a == b }.to_a

  c = 0
  i = segs.index { |x| c += 1 if x[0] == '1'; c == k - 1 }

  segs[i+1], segs[i+2] = segs[i+2], segs[i+1]

  segs.join
end

def main(input)
  lines = input.split("\n")
  n, k = lines[0].split.map(&:to_i)
  s = lines[1]
  move(k, s)
end

require "minitest"
require "minitest/spec"

describe 'test' do
  it 'test1' do
    i = <<~INPUT
      15 3
      010011100011001
    INPUT
    _(main(i)).must_equal '010011111000001'
  end

  it 'test2' do
    i = <<~INPUT
      10 2
      1011111111
    INPUT
    _(main(i)).must_equal '1111111110'
  end
end

if $DEBUG
  Minitest.autorun
else
  lines = ARGF.read
  puts main(lines)
end
