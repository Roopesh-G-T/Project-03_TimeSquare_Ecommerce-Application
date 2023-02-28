Rails.application.routes.draw do
  
  resources :line_items
  resources :carts

  get 'home/index'

  get 'gallery/index'
  resources :stores
  devise_for :users
  
  get 'admin/login'
  post 'admin/login'
  
  get 'admin/logout'
  
  get 'account/login'
  post 'account/login'

  get "gallery/index"
  post 'gallery/index'

  get 'gallery/checkout'
  post "gallery/checkout"

  get 'gallery/purchase_complete'
  post 'gallery/purchase_complete'

  get 'gallery/search'
  post 'gallery/search'

  root 'gallery#index'
end