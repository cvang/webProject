Rails.application.routes.draw do
  devise_for :customers
  resources :products
    root 'products#index'
end
