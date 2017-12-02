Rails.application.routes.draw do
  get 'users/new'
  
  root 'application#hello'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :resume
  
end
