Rails.application.routes.draw do
  resources :packages
  # resources :package_items

  get "/", to: "application#home"
  get "/about", to: "application#about"

  resources :items, only: [:show, :index]
  resources :users, only: [:show, :edit, :update, :create, :delete, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
