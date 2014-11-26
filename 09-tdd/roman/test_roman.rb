class Roman

  def get(number)

    remainder = number
    output = []

    table.keys.reverse.each do |k, v|
      while remainder >= k # 21 >= 10
        remainder = remainder - k # 21 - 10 = 11 , 11 - 10 = 1
        output << self.lookup(k) # output => [x], [x,x]
      end
    end
    output.join('')
  end

  table = {
    5 = "",
    10 = "",
  }

  def table
    lookup = { 
      1 => "I",
      4 => "IV",
      5 => "V",
      9 => "IX",
      10 => "X",
      40 => "XL",
      50 => "L",
      90 => "XC",
      100 => "C",
      400 => "CD",
      500 => "D",
      900 => "CM",
      1000 => "M" 
    }    
  end

  def lookup(number)
    table[number]
  end

end


require 'minitest/autorun'

describe "roman" do

  let(:roman) do
    Roman.new
  end

  [
    [1, "I"],
    [4, "IV"],
    [10, "X"],
    [20, "XX"],
    [21, "XXI"],
    [90, "XC"],
    [100, "C"]
  ].each do |input, expected|

    it "converts the number #{expected} to the string #{input}" do
      roman.get(input).must_equal expected
    end

  end

end