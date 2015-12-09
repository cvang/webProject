Rails.application.routes.draw do
  resources :addresses
  resources :images
  resources :product_types
  resources :customer_addresses
  devise_for :customers
  resources :products
    root 'products#index'
end
