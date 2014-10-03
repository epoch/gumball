require 'pry'

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}


def blend(ingredients)
  # ingredients = ingredients.keys
  # bubbleless_ingredients = ingredients.join.delete(' ')
  # chopped_up_ingredients = bubbleless_ingredients.split("")
  # blended_ingredients = chopped_up_ingredients.shuffle
  # smoothie = blended_ingredients.join

  ingredients.keys.join.delete(" ").split("").shuffle.join
end

@on = false

blend(smoothie_ingredients)


class Blender
  # attr_accessor :colour # get ruby to write the reading and writing methods for you

  def initialize(colour = "white")
    @on = false
    @colour = colour
  end

  def switch_on
    @on = true
  end

  # reading 
  def colour
    @colour
  end

  # writing
  def colour=(new_colour)
    @colour = new_colour
  end

  # also writing
  def set_colour(new_colour)
    @colour = new_colour
  end

  def blend
    if @on == false
      "turn it on"
    else
      ingredients.keys.join.delete(" ").split("").shuffle.join
    end
  end

end

binding.pry
