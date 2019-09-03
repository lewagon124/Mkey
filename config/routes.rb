Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :carts do
    resources :payments, only: [:new, :create]
  end
  resources :recipes
  post "/search", to: "recipes#search"
  resources :items do
    resources :cartitems, only: [:new,:create]
  end
  resources :cartitems, only: [:destroy]
  post '/item/remove', to: "recipes#remove_to_cart"
  post '/item/add', to: "recipes#add_to_cart"
end
