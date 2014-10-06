require 'pry'

class Monsterh
  attr_reader :pocket

  def initialize(options = {})
    @name = options[:name]
    @height = options[:height]
    @pocket = []
  end

  def name
    @name
  end

  def to_s
    "my name is #{@name}"
  end
end

binding.pry

# m1 = Monster.new

# m2 = Monster.new({ :name => 'bob' })

# m2.name

# m2.to_s


