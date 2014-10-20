Rails.application.routes.draw do

  # get '/' => 'pages#welcome'
  root 'pages#welcome'

  get '/about' => 'pages#about' # pages controller about method

  get '/funny/:joke' => 'pages#lol'

  get '/calc/:num1/:num2/:operator' => 'calc#calculate'

  get '/dishes' => 'dishes#index'

end
