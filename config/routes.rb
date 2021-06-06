Rails.application.routes.draw do
  devise_for :users
  root to: "restaurants#index"
  resources :users, only: [:show ,:edit ,:update]
  resources :restaurants do
  resources :comments, only: :create
  collection do
    get 'search'
  end
end
end
