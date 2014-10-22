Rails.application.routes.draw do

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'

  root 'products#index' # this gives me the helper method root_path

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :products # , :except => [:destroy]
  resources :categories
  resources :users
end
