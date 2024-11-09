def stones(n, m, xs, as)
  return 0 if n == m # 既に揃ってる
  return -1 if n < m # オーバーしてる
  return -1 if as.sum != n # 石の合計が一致しない    
  return -1 if xs[0] != 1 # 1 から始まらないと無理
  return -1 if xs[-1] + as[-1] > n # 最後まで届かない
  return -1 if xs[0..-2].find { |x| x + as[x] < xs[x + 1] } # 次まで届かない

  move = 0
  xs[0..-2].each_with_index do |x, i|
    x[i + 1] - x[i]
    a[i]
  end

  as.map { |x| x -1 }
  p [n, m, xs, as]
end

def main(input)
  lines = input.split("\n")
  n, m = lines[0].split.map(&:to_i)
  xs = lines[1].split.map(&:to_i)
  as = lines[2].split.map(&:to_i)
  stones(n, m, xs, as)
end

# lines = ARGF.read
# puts main(lines)

require "minitest/autorun"

describe 'test' do
  it 'test1' do
    i = <<~INPUT
      5 2
      1 4
      3 2
    INPUT
    _(main(i)).must_equal 4   
  end

  it 'test2' do 
    i = <<~INPUT
      10 3
      1 4 8
      4 2 4
    INPUT
    _(main(i)).must_equal -1
  end
end