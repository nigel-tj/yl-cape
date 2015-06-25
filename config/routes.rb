Rails.application.routes.draw do
  get 'gallery/index'

  get 'music/index'
  get 'gallery/index'
  get "/callback" => "facebook#callback"
  get "/facebook_profile" => "facebook#facebook_profile"
  get 'visitors/news'
  get 'visitors/gallery'
  get 'visitors/videos'
  get 'visitors/social'
  get 'visitors/events'
  get 'visitors/location'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :musics
  resources :gallery
  resources :videos
  resources :video_uploads
  
  resources :events do
    resources :vip_tickets , :standard_tickets
    
  end
  resources :events
  resources :vip_tickets
  resources :standard_tickets
  
  
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  match '/gallery' => 'visitors#gallery', :via => :get
  match '/music' => 'visitors#music', :via => :get
  match '/news' => 'visitors#news', :via => :get
  match '/social' => 'visitors#social', :via => :get
  match '/videos' => 'visitors#videos', :via => :get
  match '/location' => 'visitors#location', :via => :get

  root to: 'visitors#index'
end
