Rails.application.routes.draw do
  resources :attack_trees
 # Set the static pages paths
 get '/home', to: 'static_pages#home'
 get '/about', to: 'static_pages#about'
 # Set the root path
 root 'static_pages#home'
end
