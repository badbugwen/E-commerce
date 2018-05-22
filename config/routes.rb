Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :products, only: [:index, :show] do
    post :add_to_cart, on: :member
    post :delete_from_cart, on: :member
    post :change_cart_item, on: :member
  end   
  resource :cart
  resource :order
  root "products#index"

  namespace :admin do
    resources :products
    resources :orders
    root "products#index"
  end  

end
