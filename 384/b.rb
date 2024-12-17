# ruby -d a.rb

def main(lines)
  _n, r = lines[0].split.map(&:to_i)
  lines[1..].map { |l| l.split.map(&:to_i) }.each do |n, a|
    if n == 1
      if (1600..2799).include?(r)
        r = r + a
      end
    elsif n == 2
      if (1200..2399).include?(r)
        r = r + a
      end
    end
  end

  r
end

def test
  require "minitest/autorun"

  describe 'test' do
    it 'test' do
      lines = <<~INPUT.split("\n")
4 1255
2 900
1 521
2 600
1 52
INPUT
      _(main(lines)).must_equal 2728
    end
  end
end

if $DEBUG
  test
else
  lines = ARGF.read.split("\n")
  puts main(lines)
end

# if __FILE__ == $PROGRAM_NAME
# end
