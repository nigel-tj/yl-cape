Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :videos, only: [:index, :new, :create]  
  root to: 'visitors#index'
end
