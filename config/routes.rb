Rails.application.routes.draw do
  get 'gallery/index'

  get 'music/index'
  get 'gallery/index'
  get "/callback" => "facebook#callback"
  get "/facebook_profile" => "facebook#facebook_profile"
  devise_for :users
  resources :users
  resources :musics
  resources :gallery
  resources :videos
  resources :video_uploads
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  root to: 'visitors#index'
end
