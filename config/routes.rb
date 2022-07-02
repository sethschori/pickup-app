Rails.application.routes.draw do
  resources :pickups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  passwordless_for :users
  resources :users, only: [:show, :create, :new]

  # Defines the root path route ("/")
  root "static#home"
end
