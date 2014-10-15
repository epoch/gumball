require 'pry'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  # :host => 'localhost' you need this for mac
  :username => 'daniel', # you dont need username on mac
  :database => 'goodfoodhunting',
  :pool => 5 # temporary fix by increasing the pool size limit not need anymore
)

class Dish < ActiveRecord::Base
end

binding.pry

before do
  @meal_types = Dish.pluck(:meal_type).uniq
end

after do
  ActiveRecord::Base.connection.close # this works so no need to increse pool size
end

get '/' do
  if params[:meal_type] && !params[:meal_type].empty?
    @dishes = Dish.where(:meal_type => params[:meal_type])
  else
    @dishes = Dish.all
  end

  erb :index
end

get '/dishes' do
  @dishes = Dish.all
  erb :index
end

post '/dishes/:id/delete' do
  dish = Dish.find(params[:id])
  dish.destroy
  redirect to('/')
end

get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end

post '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.meal_type = params[:meal_type]
  dish.save
  redirect to("/dishes/#{params[:id]}")
end

get '/dishes/new' do
  erb :new
end

get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  erb :show
end

post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.meal_type = params[:meal_type]
  dish.save
  redirect to('/')
end

 # not working now may be API changed 
