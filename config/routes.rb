Rails.application.routes.draw do
  resources :products
  resources :line_items
  resources :carts
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items 
  resources :cards, only:[:show]
end
