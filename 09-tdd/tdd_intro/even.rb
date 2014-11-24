class MyNumber
  def self.even?(number)
    Integer(number) % 2 == 0
  end
end

# the setup
require 'minitest/autorun'

# optional pretty output that reads like a specification
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()


# class Even < MiniTest::Test

#   def test_even_returns_true_when_pass_in_2
#   end

# end

describe MyNumber do

  describe 'even?' do

    # runs codes before each expectation
    before do
      #@my_number = MyNumber.new
    end

    # runs codes after each expectation
    after do
    end

    it 'returns true when number is 2' do
      # assert_equal true, even?(2)
      MyNumber.even?(2).must_equal true
    end

    it 'returns false when number is 1' do
      MyNumber.even?(1).wont_equal true
    end

    it "returns false when number is a the string '2'" do
      MyNumber.even?('2').must_equal true
    end

    it 'raise exception when number is a character' do
      proc { MyNumber.even?('a') }.must_raise ArgumentError
    end

  end

end
