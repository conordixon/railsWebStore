Rails.application.routes.draw do
  get 'cart/index'
  get 'home/index'
  get '/home' => 'home#index'


  get '/login' => 'user#login'
  get '/logout' => 'user#logout'

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
