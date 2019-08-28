Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :recipe
  post "/search", to: "recipes#search"
  resources :cart do
    resources :ingredient
  end
end
