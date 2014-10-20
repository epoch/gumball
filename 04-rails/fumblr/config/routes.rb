Rails.application.routes.draw do

 # resources :posts # use resources if you want to use form_for

  get '/posts' => 'posts#index'
  get '/posts/new' => 'posts#new'
  get '/posts/:id' => 'posts#show'

  post '/posts' => 'posts#create'

  get '/posts/:id/edit' => 'posts#edit' 
  post '/posts/:id' => 'posts#update' 
end
