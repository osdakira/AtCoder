# ruby -d a.rb

def main(inputs)
  l = inputs.split("\n")
  a, b, c, d, e = l[0].split.map(&:to_i)
  scores = { a:, b:, c:, d:, e: }
  targets = (1..5).map { |i| scores.keys.combination(i).to_a }.flatten(1)
  scored = targets.map do |ary|
    [ary.join, ary.map { |x| scores[x] }.sum]
  end
  soreted = scored.sort_by { |k, v| [-v, k] }
  soreted.map(&:first).map(&:upcase)
end

def test
  require "minitest/autorun"

  describe 'test' do
    it 'test' do
      inputs = <<~INPUT
400 500 600 700 800
INPUT
outputs = <<~OUTPUT.split("\n")
ABCDE
BCDE
ACDE
ABDE
ABCE
ABCD
CDE
BDE
ADE
BCE
ACE
BCD
ABE
ACD
ABD
ABC
DE
CE
BE
CD
AE
BD
AD
BC
AC
AB
E
D
C
B
A
OUTPUT
      _(main(inputs)).must_equal outputs
    end
  end
end

if $DEBUG
  test
else
  puts main(ARGF.read)
end
