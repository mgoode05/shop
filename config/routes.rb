Rails.application.routes.draw do

root 'products#index'
resources :products
resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]
resources :carts
get '/login', to: 'sessions#new'
get '/products', to: 'products#index'
get '/carts', to: 'carts#index'
post '/add_item/:product_id', to: 'carts#add_item'
post '/remove_item/:cart_id', to: 'carts#remove_item'
post '/purchase/:order_id', to: 'carts#purchase'
end
