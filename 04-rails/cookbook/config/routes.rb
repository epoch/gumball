Rails.application.routes.draw do

  root 'pages#index' 
  get '/about' => 'pages#about'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  resources :books
  resources :recipes
  resources :ingredients
end
