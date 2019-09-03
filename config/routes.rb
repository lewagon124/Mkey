Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :carts do
    resources :payments, only: [:new, :create, :index]
  end
  resources :recipes
  post "/search", to: "recipes#search"
  resources :items do
    resources :cartitems, only: [:new, :create]
  end
  # post '/item/remove', to: "recipes#remove_to_cart"
  # post '/item/add', to: "recipes#add_to_cart"
  resources :cartitems, only: [:destroy]
  post '/multi_create', to: "cartitems#multi_create", as: :multi_create
end
