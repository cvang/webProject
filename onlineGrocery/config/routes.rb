Rails.application.routes.draw do
  resources :images
  resources :product_types
  resources :customer_addresses
  resources :addresses
  devise_for :customers
  resources :products
    root 'products#index'
end
