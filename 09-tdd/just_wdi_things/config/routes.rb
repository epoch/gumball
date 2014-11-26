Rails.application.routes.draw do

  resources :quotes
  root 'quotes#index'
  
end
