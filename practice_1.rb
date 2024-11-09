# a = gets.to_i
# b, c = gets.chomp.split(" ").map(&:to_i)
# s = gets.chomp
# puts("#{a + b + c} #{s}")

class Meme
  def i_can_has_cheezburger?
    "OHAI!"
  end

  def will_it_blend?
    "YES!"
  end
end

require "minitest/autorun"

describe Meme do
  before do
    @meme = Meme.new
  end

  describe "when asked about cheeseburgers" do
    it "must respond positively" do
      _(@meme.i_can_has_cheezburger?).must_equal "OHAI!"
    end
  end

  describe "when asked about blending possibilities" do
    it "won't say no" do
      _(@meme.will_it_blend?).wont_match /^no/i
    end
  end
end

def a(a)
  a
end

require "minitest/autorun"

describe 'test' do
  it 'test' do
    assert a(1), 1
    assert a('a'), 'a'
  end
end