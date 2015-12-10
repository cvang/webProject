Rails.application.routes.draw do
  resources :images
  devise_for :users
  resources :users, :only => [:show, :edit, :update, :create] do 
      resources :addresses, shallow: true
  end
  resources :products
    root "products#index"
end
