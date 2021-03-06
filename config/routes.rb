Rails.application.routes.draw do
  devise_for :users
  
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :tags, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
