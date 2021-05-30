Rails.application.routes.draw do
  devise_for :users
  root to: "restaurants#index"
  resources :restaurants, only: [:new, :create, :edit,:update,:destroy]
end
