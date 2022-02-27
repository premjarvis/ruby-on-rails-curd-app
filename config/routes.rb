Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :employees, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # resources :employees
end
