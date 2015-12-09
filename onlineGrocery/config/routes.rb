Rails.application.routes.draw do
  #match '/users/:id', :to => "users#show", :as => :user_show, :via => :get
  resources :images
  devise_for :users
  resources :users, :only => [:show, :edit, :update]
  resources :products
    root "products#index"
end
