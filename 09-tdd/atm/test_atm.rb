class Atm

  def withdraw(amount)
    return false if amount == 0
    return false if amount % 5 != 0

    total = []

    while amount >= 20
      amount -= 20
      total << 20
    end

    while amount >= 10
      amount -= 10
      total << 10
    end

    while amount >= 5
      amount -= 5
      total << 5
    end

    total

    # if amount % 5 == 0

    #   tens_count = (amount / 10).floor

    # else
    #   return false
    # end

  end
end


require 'minitest/autorun'
# optional pretty output that reads like a specification
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()


describe Atm do

  # before do
  #   @atm = Atm.new    
  # end

  let(:my_atm) do
    Atm.new
  end

  describe 'withdraw' do
    [
      [4, false],
      [-1, false],
      [0, false],
      [10, [10]],
      [11, false],
      [15, [10,5]],
      [15.0, [10, 5]],
      [20, [20]],
      [25, [20,5]]
    ].each do |input, expected|

      it "return #{expected} when $#{input} is withdrawn" do
        my_atm.withdraw(input).must_equal expected
      end
    end
  end

end