require 'pry'
require 'sinatra'

get '/' do
  "OMFG!!!! hello world from sinatra"
end

# file extensions not required. pretty urls
get '/aboutus' do
  "the adventures of WDI 1 Melbourne - Gumballs"
end

get '/goodbye' do
  "Goodbye cruel world"
end

# def hi(name)
#   "Hello #{name}"
# end
get '/hi/:name' do
  "Hello #{params[:name]}"
end

get '/hi/:firstname/:lastname' do
  "Your firstname is #{params[:firstname]}, your lastname is #{params[:lastname]}"
end

get '/calc/multiply/:num1/:num2' do
  result = params[:num1].to_f * params[:num2].to_f
  "the result is #{result}"
end
