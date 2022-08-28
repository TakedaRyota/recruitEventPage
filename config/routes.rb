Rails.application.routes.draw do
  get 'users/new'
  get    "/login",      to: "sessions#new"
  post   "/login",      to: "sessions#create"
  delete "/logout",     to: "sessions#destroy"
  root   "events#index"
  get    "/events",     to: "events#index"
  get    "/users",      to: "users#index"
  post   "/users",      to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
