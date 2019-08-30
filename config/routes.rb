Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :recipes
  post "/search", to: "recipes#search"
  resources :carts do
    resources :ingredients
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
