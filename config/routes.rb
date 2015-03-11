Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  post '/' => 'welcome#create'
  get '/locations' => 'locations#index'
  get '/locations/:id' => 'locations#show'
  get '/spotify/search' => 'spotify#search'

  resources :locations
  resources :spotify
  resources :emails, only: [:create]
end
