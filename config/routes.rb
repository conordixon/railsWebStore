Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }


  get 'home/index'
  get '/home' => 'home#index'
  root 'home#index'


  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/clearcart' => 'cart#clear'
  get '/cart/increase/:id', to: 'cart#increase'
  get '/cart/reduce/:id', to: 'cart#reduce'
  get '/cart/remove/:id', to: 'cart#remove'

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
