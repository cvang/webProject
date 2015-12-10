Rails.application.routes.draw do
  resources :user_addresses
  resources :addresses
  resources :images
  devise_for :users
  resources :users, :only => [:show, :edit, :update]
  resources :products
    root "products#index"
end
