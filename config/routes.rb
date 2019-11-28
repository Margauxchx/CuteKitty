Rails.application.routes.draw do
  resources :carts, except: [:index], path: :monpanier
  resources :orders
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items 
  resources :users, only: [:show, :edit, :update]
  resources :contact, only: [:index]
  resources :chatons, only: [:index]
  resources :cards, only:[:show]
  resources :charges
end
