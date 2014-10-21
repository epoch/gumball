Rails.application.routes.draw do

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'

  root 'products#index' # this gives me the helper
  resources :products # , :except => [:destroy]

end
