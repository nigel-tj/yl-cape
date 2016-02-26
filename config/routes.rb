Rails.application.routes.draw do


  get 'albums/new'
  get 'albums/all_albums'
  get 'albums/edit'
  get 'albums/create'
  get 'albums/update'
  get 'albums/delete'
  get 'stores/index'
  get 'stores/new'
  get 'stores/show'
  get 'stores/create'
  get 'stores/update'
  get 'stores/activate'
  get 'stores/deactivate'
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
  get 'visitors/stage'

  resources :feature_banners
  devise_for :admin_users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :admins

  resources :albums
  resources :users
  resources :stores
  resources :musics
  resources :main_banners
  resources :galleries
  resources :images
  resources :features
  resources :videos, only: [:index, :new, :create]
  resources :artists
  resources :events
  #resources :vip_tickets
  #resources :standard_tickets
  
  
  # get '/auth/:provider/callback', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy', as: :logout

  match '/gallery' => 'visitors#gallery', :via => :get
  match '/music' => 'musics#index', :via => :get
  match '/news' => 'features#index', :via => :get
  match '/social' => 'visitors#social', :via => :get
  match '/videos' => 'videos#index', :via => :get
  match '/contact' => 'visitors#contact', :via => :get
  match '/artist' => 'artists#show', :via => :get
  match '/store' => 'visitors#store', :via => :get
  match '/new_artist' => 'artists#new', :via => :get
  match '/new_article' => 'features#new', :via => :get
  match '/downloads' => 'artists#downloads', :via => :get
  match '/new_track' => 'musics#new', :via => :get
  match '/new_gallery' => 'galleries#new', :via => :get
  match '/video_uploads' => 'videos#new', :via => :get 
  match '/new_store' => 'stores#new', :via => :get
  match '/new_event' => 'events#new', :via => :get
  match '/portfolio' => 'visitors#portfolio', :via => :get
  match '/new_banner' => 'main_banners#new', :via => :get
  match '/admin_index' => 'features#admin_index', :via => :get
  match '/artist_songs' => 'artists#artist', :via => :get
  match '/banners_index' => 'main_banners#index', :via => :get
  match '/users' => 'users#index', :via => :get
  match '/stage' => 'visitors#stage', :via => :get

  #root :to => "galleries#index"
  root to: 'visitors#index'
end
