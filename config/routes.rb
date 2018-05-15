Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :products, only: [:index, :show]
  resources :carts, only: [:show]
  resources :orders, only: [:show]
  root "products#index"

  namespace :admin do
    resources :products
    resources :orders
    root "products#index"
  end  

end
