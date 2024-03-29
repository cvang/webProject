Rails.application.routes.draw do
  resources :checkout, :only =>[:show, :edit, :update, :create, :index]
  devise_for :users
  resources :users, :only => [:show, :edit, :update, :create] do 
      resources :addresses, shallow: true
      resources :credit_cards, shallow: true
  end
  resources :products do
    resources :carts, shallow: true
  end
    root "products#index"
end
