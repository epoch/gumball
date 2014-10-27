class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @books = Book.all
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end