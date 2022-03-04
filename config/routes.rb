Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  resources :employees, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # resources :employees
  namespace :api do
    post 'employee/create_emp'
    get 'employee/show_emp'
    post 'employee/update_emp'
    delete 'employee/delete_emp'
  end
end
