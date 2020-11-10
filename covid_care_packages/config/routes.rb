Rails.application.routes.draw do
  
  get "/", to: "application#home", as: "home"
  get "/about", to: "application#about"

  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  # resources :package_items

  get "/packages/add_items", to: "packages#add_items"
  
  resources :packages
  resources :items, only: [:show, :index]
  resources :users, only: [:show, :edit, :update, :create, :destroy, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
