require 'sinatra'
# require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  sql = "select * from dishes;"
  @result = run_sql(sql)
  erb :index
end

get '/dishes' do
  # sql = "select * from dishes;"
  @result = run_sql("select * from dishes;")
  erb :index
end

get '/dishes/:id/edit' do
  sql = "SELECT * FROM dishes WHERE id = #{params[:id]}"
  @results = run_sql(sql)
  @result = @results[0]
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
  @result = run_sql(sql)
  erb :show
end

post '/dishes' do
  sql = "INSERT INTO dishes (name,image_url,meal_type) VALUES ('#{params['name']}','#{params['image_url']}', '#{params['meal_type']}')"

  run_sql(sql)
  redirect to('/')
end

def run_sql(sql)
  db = PG.connect(:dbname => 'goodfoodhunting')
  result = db.exec(sql)
  db.close
  return result
end
