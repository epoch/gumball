class Recipe < ActiveRecord::Base
  belongs_to :book
  has_and_belongs_to_many :ingredients

  def self.meal_types
    %w(breakfast lunch dinner snack dessert)
  end

end
