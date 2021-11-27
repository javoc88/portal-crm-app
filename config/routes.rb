Rails.application.routes.draw do
  devise_for :users
  root to: 'clients#index'
  resources :users, only: [:index] do
    resources :clients
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
