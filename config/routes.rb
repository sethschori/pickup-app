Rails.application.routes.draw do
  resources :pickups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  passwordless_for :users
  resources :users

  # Defines the root path route ("/")
  # root "articles#index"
end
