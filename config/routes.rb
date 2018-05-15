Rails.application.routes.draw do
  #devise_for :views
  root to: "homes#index"
  devise_for :users
  get 'homes/index'
  resources :locations
  resources :categories
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
