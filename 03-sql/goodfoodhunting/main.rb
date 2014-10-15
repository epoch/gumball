require 'sinatra'
# require 'sinatra/reloader'
require 'pg'
require 'pry'

before do
  @meal_types = run_sql("SELECT DISTINCT meal_type FROM dishes;")
end

get '/' do
  meal_type = params[:meal_type]
  if meal_type
    sql = "select * from dishes where meal_type = '#{meal_type}';"
  else
    sql = "select * from dishes;"
  end

  @rows = run_sql(sql)
  erb :index
end

get '/dishes' do
  @rows = run_sql("select * from dishes;")
  binding.pry
  erb :index
end

post '/dishes/:id/delete' do
  sql = "DELETE FROM dishes WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to('/')
end


get '/dishes/:id/edit' do
  sql = "SELECT * FROM dishes WHERE id = #{params[:id]}"
  @rows = run_sql(sql) # plural because the method always return a collection
  @row = @rows.first # pluck the first row out
  erb :edit
end

post '/dishes/:id' do
  sql = "UPDATE dishes SET name='#{params[:name]}', image_url='#{params[:image_url]}', meal_type='#{params[:meal_type]}' WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to("/dishes/#{params[:id]}")
end

get '/dishes/new' do
  erb :new
end

get '/dishes/:id' do
  sql = "select * from dishes where id = #{params[:id]}"
  @rows = run_sql(sql)
  erb :show
end

post '/dishes' do
  sql = "INSERT INTO dishes (name,image_url,meal_type) VALUES ('#{params['name']}','#{params['image_url']}', '#{params['meal_type']}')"

  run_sql(sql)
  redirect to('/')
end

get '/routes' do
  @routes = Sinatra::Application.routes
  erb :routes
end

def run_sql(sql)
  db = PG.connect(:dbname => 'goodfoodhunting') # database name
  rows = db.exec(sql)
  db.close
  return rows
end
