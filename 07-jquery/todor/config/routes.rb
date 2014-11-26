Rails.application.routes.draw do

  root 'tasks#index'
  resources :tasks

  get '/tasks/:id/complete' => 'tasks#complete'
  get '/tasks/:id/uncomplete' => 'tasks#uncomplete'
end
