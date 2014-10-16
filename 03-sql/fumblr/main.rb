require 'pry'
require 'sinatra'
require 'active_record'

config = {
  adapter: 'postgresql',
  # mac host: 'localhost',
  username: 'daniel',
  database: 'fumblr' 
}

ActiveRecord::Base.establish_connection(config)

class Post < ActiveRecord::Base
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do # show the new post form
  erb :new
end

post '/posts' do # when user submit the form
  post = Post.new(params)
  # post.created_at = Time.now # activerecord will set this for you if you name it created_at
  post.save
  redirect to('/')
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :show
end

get '/posts/:id/edit' do # show the edit form
  @post = Post.find(params[:id])
  erb :edit
end

post '/posts/:id' do
  post = Post.find(params[:id])
  post.title = params[:title]
  post.image_url = params[:image_url]
  post.content = params[:content]
  post.save
  redirect to("/posts/#{params[:id]}")
end





