Rails.application.routes.draw do
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'

  get '/signup', to: 'users#new'
  get '/user/myedit', to: 'users#editUserProfile'

  resources :photos
  resources :albums
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlindex
  root 'users#index'
end
