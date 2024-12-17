# ruby -d a.rb

def pre(lines)
  puts main(*lines[0].split, lines[1])
end

def main(n, c1, c2, s)
  s.gsub(/[^#{c1}]/, c2)
end

def test
  require "minitest/autorun"

  describe 'test' do
    it 'test' do
      _(main(3, 'b', 'g', 'abc')).must_equal 'gbg'
      _(main(1, 's', 'h', 's')).must_equal 's'
    end
  end
end

if $DEBUG
  test
else
  lines = ARGF.read.split("\n")
  pre(lines)
end

# if __FILE__ == $PROGRAM_NAME
# end
