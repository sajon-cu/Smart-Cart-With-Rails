Rails.application.routes.draw do
  resources :line_items
  resources :null
  resources :cards
  root 'store#index', as: 'store_index'
  #root 'products#index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
