class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

end