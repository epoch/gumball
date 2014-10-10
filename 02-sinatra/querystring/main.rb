require 'sinatra'
# require 'pry'

get '/hi' do
  puts hello # bug - this will crash the program
  erb :index
end

post '/hi' do
  erb :index
end