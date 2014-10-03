# fish1 = {
#   health: => 50,
#   speed: => 5,
#   name: => "fishy fish"
# }

# fish2 = {
#   health: => 40,
#   speed: => 2,
#   name: => "bob"
# }

# shark1 = {
# }

# seaworld = []

# seaworld << fish1 << fish2 << shark1


# def move_fish(fish)
#   # move fish
# end

# def move_shark(shark)
# end


class Fish
  # def initialze(health, speed = 5)
  #   @health = health
  #   @speed = speed
  # end

  def setup(health, speed)
    @health = health
    @speed = speed
  end

  def move
  end

  def health=(whatever_user_pass_in)
    @health = whatever_user_pass_in
  end

  def sleep
    @health = @health + 10
  end

  def to_s
    "This fish has #{@health} health and #{@speed} speed"
  end
end

class World

  def initialize
    @ocean = []
  end

  def ocean
    @ocean
  end

end

f1 = Fish.new
f1.setup(50, 5)
f1.sleep

world = World.new()

world.ocean << Fish.new(50, 1000)
world.ocean << Fish.new(20, 1000000)

f1 = world[0]
f1.sleep

