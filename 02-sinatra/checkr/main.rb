require 'pry' # optional
require 'sinatra'

get '/' do
  @password = params[:password]

  if @password && !@password.empty? # only if password exists & not empty
    if @password.length < 6
      @message = "too weak"
    else
      @message = "your secrets are safe"
    end
  end

  erb :index
end

get '/about' do
  erb :about
end