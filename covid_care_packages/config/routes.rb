Rails.application.routes.draw do
  # resources :package_items
  resources :items, only: [:show, :index]
  resources :users, only: [:show, :edit, :update, :create, :delete, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
