Rails.application.routes.draw do
  root "shift#index"

  get "/login",  to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :users, only: [:show]

  resources :shifts, only: [:new]
end
