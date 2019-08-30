Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :carts
  resources :recipes
  post "/search", to: "recipes#search"
  resources :items do
    resources :cartitems, only: [:new,:create]
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
