Rails.application.routes.draw do

  get 'lifestyles/index'
  get 'lifestyles/new'
  get 'lifestyles/create'
  get 'lifestyles/update'
  get 'lifestyle/index'
  get 'lifestyle/new'
  get 'lifestyle/create'
  get 'lifestyle/update'
  get 'coming_soon/index'
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
  devise_for :users
  devise_for :admins
  resources :lifestyles
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
  match '/music' => 'musics#music', :via => :get
  match '/news' => 'features#index', :via => :get
  match '/social' => 'visitors#social', :via => :get
  match '/videos' => 'videos#index', :via => :get
  match '/contact_us' => 'visitors#contact', :via => :get
  match '/artist' => 'artists#show', :via => :get
  match '/store' => 'visitors#store', :via => :get
  match '/new_artist_upload' => 'artists#new', :via => :get
  match '/new_feature_upload' => 'features#new', :via => :get
  match '/downloads' => 'artists#downloads', :via => :get
  match '/new_music_upload' => 'musics#new', :via => :get
  match '/new_gallery_upload' => 'galleries#new', :via => :get
  match '/new_video_upload' => 'videos#new', :via => :get 
  match '/new_store_upload' => 'stores#new', :via => :get
  match '/new_event_upload' => 'events#new', :via => :get
  match '/portfolio' => 'visitors#portfolio', :via => :get
  match '/new_banner_upload' => 'main_banners#new', :via => :get
  match '/admin_index' => 'features#admin_index', :via => :get
  match '/artist_songs' => 'artists#artist', :via => :get
  match '/banners_index' => 'main_banners#index', :via => :get
  match '/users' => 'users#index', :via => :get
  match '/stage' => 'visitors#stage', :via => :get
  match '/coming_soon' => 'coming_soon#index', :via => :get
  match '/team' => 'visitors#team', :via => :get
  match '/new_lifestyle_upload' => 'lifestyles#new', :via => :get
  match '/lifestyle_admin_index' => 'lifestyles#lifestyle_admin_index', :via => :get
  match '/lifestyle' => 'lifestyles#index', :via => :get
  match '/admin_album_index' => 'albums#admin_index', :via => :get
  match '/musics' => 'musics#admin_index', :via => :get
  match '/admin_artist_index' => 'artists#admin_index', :via => :get
  match '/new_album_upload' => 'albums#new', :via => :get
  match '/admins' => 'galleries#new', :via => :get

  #root :to => "galleries#index"
  root to: 'visitors#index' #'coming_soon#index'
end
