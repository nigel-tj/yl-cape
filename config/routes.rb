Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :videos, only: [:index, :new, :create]  
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  root to: 'visitors#index'
end
