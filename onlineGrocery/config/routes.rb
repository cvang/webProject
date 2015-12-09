Rails.application.routes.draw do
  resources :images
  devise_for :users
  resources :users, :only => [:edit, :update]
  resources :products
    root "products#index"
end
