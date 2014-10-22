# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all
Product.delete_all
User.delete_all

User.create username: 'dt', password: 'test'
Category.create name: 'stuff'
Category.create name: 'bargains'

# 100.times do
#   name = ('a'..'z').to_a.shuffle.sample(10).join
#   Category.create name: name
# end

c3 = Category.create name: 'cool stuff'

Product.create name: 'stick', category_id: c3.id