require 'sinatra'

get '/' do
  @word_list = %w(gumball cake pudding hotdog)
  erb :index
end





