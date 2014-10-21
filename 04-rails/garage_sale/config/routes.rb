Rails.application.routes.draw do

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'

  resources :products # , :except => [:destroy]

end
