Rails.application.routes.draw do

  get 'music/index'
  get 'gallery/index'
  get "/callback" => "facebook#callback"
  get "/facebook_profile" => "facebook#facebook_profile"
  get 'visitors/news'
  get 'visitors/gallery'
  get 'visitors/videos'
  get 'visitors/social'
  get 'visitors/events'
  get 'visitors/contact'
  get 'videos/test'

  devise_for :admins

  devise_for :users

  #resources :users
  resources :musics
  resources :main_banners
  resources :galleries
  resources :images
  resources :features
  resources :videos, only: [:index, :new, :create]
  resources :artists, only: [:index, :new, :create]
  
  resources :events do
    resources :vip_tickets , :standard_tickets
    
  end
  resources :events
  resources :vip_tickets
  resources :standard_tickets
  
  
  # get '/auth/:provider/callback', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy', as: :logout

  match '/gallery' => 'visitors#gallery', :via => :get
  match '/music' => 'musics#index', :via => :get
  match '/features' => 'visitors#news', :via => :get
  match '/social' => 'visitors#social', :via => :get
  match '/videos' => 'videos#index', :via => :get
  match '/contact' => 'visitors#contact', :via => :get
  match '/artists' => 'artists#index', :via => :get
  match '/store' => 'visitors#store', :via => :get
  match '/artist_uploads' => 'artists#new', :via => :get
  match '/feature_uploads' => 'features#new', :via => :get
  match '/artist_downloads' => 'artists#downloads', :via => :get
  match '/music_uploads' => 'musics#new', :via => :get
  match '/gallery_uploads' => 'galleries#new', :via => :get
  match '/video_uploads' => 'videos#new', :via => :get 
  match '/store_uploads' => 'store#new', :via => :get
  match '/event_uploads' => 'events#new', :via => :get
  match '/portfolio' => 'visitors#portfolio', :via => :get
  match '/admin_index' => 'features#admin_index', :via => :get
  match '/artist_songs' => 'artists#artist', :via => :get
  match '/banners_index' => 'main_banners#index', :via => :get
  match '/users' => 'users#index', :via => :get


  #root :to => "galleries#index"
  root to: 'visitors#index'
end
