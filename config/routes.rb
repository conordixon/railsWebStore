Rails.application.routes.draw do
  get 'home/index'
  get '/home' => 'home#index'

  # resources :users
  #   resources :login
  #   resources :logout
  #   resources :signup
  #
  # get 'user/login'
  # get 'user/logout'
  # get '/user' => 'user#login'
  # get '/user' => 'user#logout'

  resources :productitems
    resources :new
    resources :create
    resources :show
    resources :edit
    resources :delete


  get 'productitems/new'
  get 'productitems/show'
  get 'productitems/edit'
  get 'productitems/delete'
  get '/productitems' => 'productitems#index'
  get '/productitems' => 'productitems#new'
  get '/productitems' => 'productitems#show'
  get '/productitems' => 'productitems#edit'
  get '/productitems' => 'productitems#delete'


  root 'home#index'
end
