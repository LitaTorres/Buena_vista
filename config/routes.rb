Rails.application.routes.draw do
  resources :departments
  resources :states
  resources :services
  resources :buildings
  resources :clients
  devise_for :users
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homes#index"
end
