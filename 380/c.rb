# ruby -d c.rb -v

def move(k, s)
  segments = s.chars.chunk_while {|a, b| a == b }.to_a

  one_index = 0
  seg_index = segments.each_with_index do |seg, i|
    if seg[0] == '1'
      one_index += 1
      if one_index == k - 1
        break i
      end
    end
  end
  replaced = segments[0..seg_index] + segments[seg_index+2..seg_index+2] + segments[seg_index+1..seg_index+1] + segments[seg_index+3..-1]
  replaced.join
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
