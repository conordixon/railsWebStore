Rails.application.routes.draw do
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  resources :orders do
    resources :orderitems
  end

  resources :categories

  devise_for :users do resources :orders end
  get '/checkout' => 'cart#createOrder'
  get '/users/:id' => 'users#show'

  root 'home#index'
  get 'home/index'
  get '/home' => 'home#index'

  get 'cart/index'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/clearcart' => 'cart#clear'
  get 'increase/:id', to: 'cart#increase'
  get 'reduce/:id', to: 'cart#reduce'
  get 'remove/:id', to: 'cart#remove'

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

end