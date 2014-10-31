Ingredient.delete_all
Book.delete_all
Recipe.delete_all

Book.create title: '101 Unhealthy eating'
Book.create title: 'MEAT'
Book.create title: 'Better Picture Cookbook'
b1 = Book.create title: 'Hungry Hackers'

ingredients = [
  'magic beans',
  'cotton candy',
  'fairy floss',
  'gumballs',
  'gold stick',
  'wonderpants']

ingredients.each do |ing|
  Ingredient.create name: ing
end

r1 = Recipe.new name: 'WDI soup', meal_type: 'dinner', cooktime: 10
r1.ingredients << Ingredient.find_by(name: 'gumballs')
r1.ingredients << Ingredient.find_by(name: 'wonderpants')
r1.book = b1
r1.save

r2 = Recipe.new name: 'Rail pudding', meal_type: 'dessert', cooktime: 15
r2.ingredients << Ingredient.find_by(name: 'magic beans')
r2.book = b1
r2.save


CSV.foreach('./occasion.csv') do |csv|

  o = Occasion.new(name: csv[0]) # new occasion

  1.upto(csv.size-1) do |col_num| # looping through all drinks for this occasion
    if !csv[col_num].present? # if not empty

      if drink = Drink.find_by(name: csv[col_num]) # if a matching drink is found
        o.drinks << drink
      end

    end
  end

  o.save
  
end




